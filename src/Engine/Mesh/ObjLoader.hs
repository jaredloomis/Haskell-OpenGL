{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE BangPatterns #-}
module Engine.Mesh.ObjLoader (
--    loadObjModel,
    loadObjObject
--    loadObjModelKeepVerts
) where

import Control.Applicative
import Data.Default (def)
import Data.List.Split (splitOn)
import Data.List (intercalate)
import qualified Data.ByteString.Char8 as B
import Data.Vec
    ((:.)(..), Vec3, Vec2,
     Mat44, translation,
     perspective, multmm,
     rotationX, rotationY, rotationZ)
import qualified Data.Vec as Vec (Map(..))
import Data.Foldable (toList)
import Data.Monoid (Monoid(..), (<>))

import qualified Data.Sequence as S (empty, index, fromList)
import Data.Sequence (Seq, (|>), (><))

import Data.Attoparsec.ByteString.Char8
import qualified Data.Attoparsec.ByteString.Char8 as A
import Control.Monad.State

import Graphics.Rendering.OpenGL.Raw (GLfloat)
import qualified Graphics.Rendering.OpenGL as GL

import Engine.Mesh.Material
    (Material(..), emptyMaterial, loadMtlFile)
import Engine.Core.Types
    (Entity(..), Player(..), World(..),
     GameIO (..), io)
import Engine.Bullet.Bullet (addStaticTriangleMesh)
import Engine.Graphics.Primitive
import Engine.Graphics.GLSL

loadObjObject ::
    t ->
    FilePath ->
    GameIO t (ShaderProgram (World t, Entity t), Entity t)
loadObjObject t objFile = do
    world <- get
    
    let dir = directoryOfFile objFile
    objData@(ObjData verts _ _ _ _ _) <-
        io $ parseObjData dir =<< B.readFile objFile

    rigidBody <- io $ addStaticTriangleMesh verts def $ worldPhysics world
    let entity = Entity 0 0 0 return rigidBody t


    prog <- io $ defaultProgram objData (world, entity)

    return $ (prog, entity)
  where
    directoryOfFile :: FilePath -> FilePath
    directoryOfFile = (++"/") . intercalate "/" . init . splitOn "/"

defaultProgram :: ObjData ->
    (World t, Entity t) ->
    IO (ShaderProgram (World t, Entity t))
defaultProgram objDat pair = createProgram (defaultSequence objDat) pair

defaultSequence :: ObjData -> ShaderSequence (World t, Entity t)
defaultSequence objDat = defaultVert objDat -&> lastly (defaultFrag objDat)

defaultVert :: ObjData -> Shader GL.VertexShader (World t, Entity t)
defaultVert (ObjData verts _ _ _ _ diffuse) = Shader Proxy $ do
    version "430 core"

    position <- layoutIn ["location=0"] vec3 ("vposition", const verts)
    color <- layoutIn ["location=1"] vec3 ("vcolor", const diffuse)

    fcolor <- out vec3 "fcolor"
    fcolor #= color

    mvpMat' <- uniform mat4 ("mvpMat", uncurry mvpMat)
    glPosition #= mvpMat' .* (position +.+ fltd 1.0)

defaultFrag :: ObjData -> Shader GL.FragmentShader (World t, Entity t)
defaultFrag _ = Shader Proxy $ do
    version "430 core"

    vcolor <- inn vec3 "fcolor"

    color <- out vec4 "color"
    color #= vcolor +.+ fltd 1

mvpMat :: World t -> Entity t -> Mat44 GLfloat
mvpMat w e =
    projMatDims 800 600 `multmm`
    viewMatFromPlayer (worldPlayer w) `multmm`
    modMatFromEntity e

modMatFromEntity :: Entity t -> Mat44 GLfloat
modMatFromEntity = translation . entityPosition

viewMatFromPlayer :: Player t -> Mat44 GLfloat
viewMatFromPlayer p =
    let rx :. ry :. rz :. () = Vec.map (negate . toRadians) $ playerRotation p
        rotatedX = rotationX rx
        rotatedY = rotationY ry
        rotatedZ = rotationZ rz
        rotation = rotatedX `multmm` rotatedY `multmm` rotatedZ
    in rotation `multmm`
        translation (Vec.map negate $ playerPosition p)
  where
    toRadians = (*(pi/180))

projMatDims :: GLfloat -> GLfloat -> Mat44 GLfloat
projMatDims width height =
    perspective 0.1 100 45 (width / height)

-- = Material stuff.

loadObjMaterials :: String -> B.ByteString -> IO ([Material], [Material])
loadObjMaterials directory contents = do
    library <- loadObjMaterialLib directory contents

    let listRet = listOfMats contents library emptyMaterial

    return (listRet, library)

loadObjMaterialLib :: String -> B.ByteString -> IO [Material]
loadObjMaterialLib directory =
    (<$>) concat .
        mapM (\x -> loadMtlFile (directory++B.unpack x)) . parseMtlLibs
{-# INLINE loadObjMaterialLib #-}

parseMtlLibs :: B.ByteString -> [B.ByteString]
parseMtlLibs = getMaterialLibs . B.lines

getMaterialLibs :: [B.ByteString] -> [B.ByteString]
getMaterialLibs (line:rest) =
    if "mtllib " `B.isPrefixOf` line
        then (last . B.words $ line) :
                getMaterialLibs rest
    else getMaterialLibs rest
getMaterialLibs _ = []

listOfMats :: B.ByteString -> [Material] -> Material -> [Material]
listOfMats contents =
    lineAction (B.lines contents)
    where
    lineAction :: [B.ByteString] -> [Material] -> Material -> [Material]
    lineAction (line:rest) library currentMat
        | "usemtl " `B.isPrefixOf` line =
            let mat = findMaterial (last . B.words $ line) library
            in lineAction rest library mat
        | "f " `B.isPrefixOf` line =
            replicate 3 currentMat ++
                lineAction rest library currentMat
        | otherwise = lineAction rest library currentMat
    lineAction _ _ _ = []

findMaterial :: B.ByteString -> [Material] -> Material
findMaterial name library = head $ filter (\x -> matName x == name) library

-- = Data types.

data ObjData = ObjData
    [Vec3 GLfloat]      -- Position
    [Vec3 GLfloat]      -- Normal
    [Vec2 GLfloat]      -- Texture coords
    [GL.GLint]          -- Texture ID
    [GL.TextureObject]  -- Texture Objects
    [Vec3 GLfloat]      -- Diffuse

data VertDataSeq = VertDataSeq
    (Seq (Vec3 GLfloat))
    (Seq (Vec3 GLfloat))
    (Seq (Vec2 GLfloat))
instance Monoid VertDataSeq where
    mappend (VertDataSeq v n t) (VertDataSeq v2 n2 t2) =
        VertDataSeq (v >< v2) (n >< n2) (t >< t2)
    mempty = VertDataSeq S.empty S.empty S.empty

data ObjLine =
    LineVert (Vec3 GLfloat)
  | LineNorm (Vec3 GLfloat)
  | LineTex  (Vec2 GLfloat)
  | LineFace (Vec3 (Vec3 Int))
  | MtlRef FilePath
  | Invalid B.ByteString
    deriving (Show, Eq)

----------------
-- PROCESSING --
----------------

parseObjData :: String -> B.ByteString -> IO ObjData
parseObjData dir !f =
    let objLines = runObjParser f
        ObjData verts norms texCoords _ _ _ = pieceTogether objLines
        mtlRefs = filter isMtlRef  objLines
    in do
        mats <- fst <$> loadObjMaterials dir f
        let diffuse =  map (fromJustSafe . matDiffuseColor) mats
            texIds = map (fromJustSafe . matTexId) mats
        return $ ObjData verts norms texCoords texIds [] diffuse
  where
    isMtlRef (MtlRef _) = True
    isMtlRef _ = False

parseVertData :: B.ByteString -> ObjData
parseVertData = pieceTogether . runObjParser

pieceTogether :: [ObjLine] -> ObjData
pieceTogether objLines = fromVertData . pieceTogether' objLines $
                        VertDataSeq S.empty S.empty S.empty
  where
    fromVertData (VertDataSeq v n t) =
        ObjData (toList v) (toList n) (toList t) [] [] []

pieceTogether' :: [ObjLine] ->
                  VertDataSeq ->
                  VertDataSeq
pieceTogether' (LineVert vert : objLines) (VertDataSeq vaccum naccum taccum) =
    pieceTogether' objLines (VertDataSeq (vaccum |> vert) naccum taccum)
pieceTogether' (LineNorm norm : objLines) (VertDataSeq vaccum naccum taccum) =
    pieceTogether' objLines (VertDataSeq vaccum (naccum |> norm) taccum)
pieceTogether' (LineTex tex : objLines) (VertDataSeq vaccum naccum taccum) =
    pieceTogether' objLines (VertDataSeq vaccum naccum (taccum |> tex))
pieceTogether' (LineFace (
    (v1 :. vt1 :. vn1 :. ()) :.
    (v2 :. vt2 :. vn2 :. ()) :.
    (v3 :. vt3 :. vn3 :. ()) :. ()) : objLines)
              (VertDataSeq vaccum naccum taccum) =
    let vert1 = vaccum `S.index` (v1-1)
        tex1  = taccum `S.index` (vt1-1)
        norm1 = naccum `S.index` (vn1-1)

        vert2 = vaccum `S.index` (v2-1)
        tex2  = taccum `S.index` (vt2-1)
        norm2 = naccum `S.index` (vn2-1)

        vert3 = vaccum `S.index` (v3-1)
        tex3  = taccum `S.index` (vt3-1)
        norm3 = naccum `S.index` (vn3-1)

        curVertData = VertDataSeq
            (S.fromList [vert1, vert2, vert3])
            (S.fromList [norm1, norm2, norm3])
            (S.fromList [tex1, tex2, tex3])
        restVertData = pieceTogether' objLines $
                VertDataSeq vaccum naccum taccum

    in curVertData <> restVertData
pieceTogether' (MtlRef _ : objLines) accum =
    pieceTogether' objLines accum
pieceTogether' (Invalid _ : objLines) accum =
    pieceTogether' objLines accum
pieceTogether' [] _ = mempty

-------------
-- PARSING --
-------------

runObjParser :: B.ByteString -> [ObjLine]
runObjParser contents =
    let Right results = parseOnly parseObj contents
    in results

parseObj :: Parser [ObjLine]
parseObj = many $ parseObjLine <* endOfLine
{-# INLINE parseObj #-}

parseObjLine :: Parser ObjLine
parseObjLine =
        parseVertLine
    <|> parseNormLine
    <|> parseTexLine
    <|> parseFaceLine
    <|> parseInvalid
{-# INLINE parseObjLine #-}

parseVertLine :: Parser ObjLine
parseVertLine =
    char 'v' *> skipSpace *> (LineVert <$> parseVec3)
{-# INLINE parseVertLine #-}

parseNormLine :: Parser ObjLine
parseNormLine =
    "vn" *> skipSpace *> (LineNorm <$> parseVec3)
{-# INLINE parseNormLine #-}

parseTexLine :: Parser ObjLine
parseTexLine =
    "vt" *> skipSpace *> (LineTex . texCoordToGLFormat <$> parseVec2)
{-# INLINE parseTexLine #-}

-- | .obj files store texture coordinates in a
--   way that OpenGL doesn't understand. This
--   puts it in the right format.
texCoordToGLFormat :: Vec2 GLfloat -> Vec2 GLfloat
texCoordToGLFormat (x :. y :. ()) = x :. (1-y) :. ()
{-# INLINE texCoordToGLFormat #-}

parseFaceLine :: Parser ObjLine
parseFaceLine =
    char 'f' *> skipSpace *> (LineFace <$> parseFaceDat)
{-# INLINE parseFaceLine #-}

parseFaceDat :: Parser (Vec3 (Vec3 Int))
parseFaceDat =
    toV3 <$> timesSep 3 parseFaceGroup skipSpace
  where
    toV3 :: [Vec3 Int] -> Vec3 (Vec3 Int)
    toV3 [x, y, z] = x :. y :. z :. ()
    toV3 _ = error ("Engine.Model.ObjLoader." ++
                    "parseFaceDat.toV3 - Bad list length!")

-- | This MUST be NOINLINE'd if -O2 is used,
--   otherwise it crashes, due to a GHC 7.8.2
--   bug.
timesSep :: Int -> Parser a -> Parser b -> Parser [a]
timesSep = times' 0
  where
    times' i total parser sep
        | i+1 < total =
            liftA2 (:) (parser <* sep) (times' (i+1) total parser sep)
        | i+1 == total =
            liftA2 (:) parser (times' (i+1) total parser sep)
        | otherwise = return []
{-# NOINLINE timesSep #-}

parseFaceGroup :: Parser (Vec3 Int)
parseFaceGroup = do
    v <- decimal
    _ <- char '/'
    vt <- decimal <|> return (-1)
    _ <- char '/'
    vn <- decimal <|> return (-1)
    return $ v :. vt :. vn :. ()

parseVec3 :: Parser (Vec3 GLfloat)
parseVec3 = do
    x :. y :. () <- parseVec2
    skipSpace
    z <- realToFrac <$> double
    return $ x :. y :. z :. ()

parseVec2 :: Parser (Vec2 GLfloat)
parseVec2= do
    x <- realToFrac <$> double
    skipSpace
    y <- realToFrac <$> double
    return $ x :. y :. ()

parseInvalid :: Parser ObjLine
parseInvalid =
    Invalid <$> A.takeWhile (/='\n')
{-# INLINE parseInvalid #-}

fromJustSafe :: Num a => Maybe a -> a
fromJustSafe (Just x) = x
fromJustSafe Nothing = 0
{-# INLINE fromJustSafe #-}

-- = .mtl file.

{-
data Material' = Material' {
    materialName :: B.ByteString,
    materialDiffuse :: Vec3 GLfloat,
    materialTexture :: Maybe FilePath
    } deriving (Show, Eq)

data MtlLine =
    MaterialDecl B.ByteString
  | MaterialDiffuse (Vec3 GLfloat)
  | MaterialTexture FilePath
  | InvalidMtlLine B.ByteString
    deriving (Show)

testMtl :: [Material']
testMtl = runMtlParser "newmtl Wasabi\nKd 0 1 0\n"

testMtl2 :: [MtlLine]
testMtl2 = runMtlParser' "newmtl Wasabi\nKd 0 1 0\n"

testMtl' :: [Material']
testMtl' = createMaterials
    [MaterialDecl "wasabi",
     MaterialDiffuse $ 0 :. 1 :. 0 :. (),
     MaterialTexture "/home/akakakak"]

--getMtls :: B.ByteString -> [Material']
--getMtls =

--parseMtlRefs :: Parser [FilePath]
--parseMtlRefs = many $ parseMtlRef <* endOfLine



runMtlParser :: B.ByteString -> [Material']
runMtlParser contents =
    let Right results = parseOnly parseMaterials contents
    in results

runMtlParser' :: B.ByteString -> [MtlLine]
runMtlParser' contents =
    let Right results = parseOnly parseMtlLines contents
    in results

parseMaterials :: Parser [Material']
parseMaterials = createMaterials <$> parseMtlLines

createMaterials :: [MtlLine] -> [Material']
createMaterials = createMats [] --map createMaterial . groupMats
  where
    createMats :: [MtlLine] -> [MtlLine] -> [Material']
    createMats acc (n@MaterialDecl{} : xs) =
        if null acc
            then createMats [n] xs
        else createMaterial acc : createMats [n] xs
    createMats acc (x:xs) = createMats (x:acc) xs
    createMats acc [] = [createMaterial acc]

    createMaterial :: [MtlLine] -> Material'
    createMaterial xs =
        let name = findName xs
            diff = findDiffuse xs
            tex  = findTexture xs
        in Material' name diff tex

    findName (MaterialDecl name:_) = name
    findName (_:xs) = findName xs
    findName [] = error "ObjLoader.createMaterial.findName"

    findDiffuse (MaterialDiffuse color:_) = color
    findDiffuse (_:xs) = findDiffuse xs
    findDiffuse []     = 0.8 :. 0.8 :. 0.8 :. ()

    findTexture (MaterialTexture tex:_) = Just tex
    findTexture (_:xs) = findTexture xs
    findTexture []     = Nothing

parseMtlLines :: Parser [MtlLine]
parseMtlLines = many $ parseMtlLine <* endOfLine

parseMtlLine :: Parser MtlLine
parseMtlLine =
        parseMaterialName
    <|> parseDiffuse
    <|> parseTexture
    <|> parseInvalidMat

parseMaterialName :: Parser MtlLine
parseMaterialName = MaterialDecl <$> ("newmtl " *> skipSpace *> alphaNumWord)

parseDiffuse :: Parser MtlLine
parseDiffuse = MaterialDiffuse <$> ("Kd " *> skipSpace *> parseVec3)

parseTexture :: Parser MtlLine
parseTexture = MaterialTexture <$>
    ("map_Kd " *> skipSpace *> (B.unpack <$> A.takeWhile (/='\n')))

parseInvalidMat :: Parser MtlLine
parseInvalidMat =
    InvalidMtlLine <$> A.takeWhile (/='\n')

alphaNum :: Parser Char
alphaNum = satisfy isAlphaNum

alphaNumWord :: Parser B.ByteString
alphaNumWord = A.takeWhile isAlphaNum

isAlphaNum :: Char -> Bool
isAlphaNum w = isLower || isUpper || isNum
  where
    isNum = w >= '0' && w <= '9'
    isUpper = w >= 'A' && w <= 'Z'
    isLower = w >= 'a' && w <= 'z'
-}
