module Save where

import System.IO
    (openFile, IOMode(..), hGetContents, hClose)

import Engine.Core.World
import Engine.Core.Vec

writeSaveFromWorld :: World t -> FilePath -> IO ()
writeSaveFromWorld world file = do
    fileHandle <- openFile file WriteMode
    hClose fileHandle
    return ()

--generateWorldSaveText :: World t -> String
--generateWorldSaveText =

-- PureEntity$12$12$12$"res/objects/.."$"shader/.."$"shaders/.."

generateGameObjectText :: GameObject t -> String
generateGameObjectText pe@(PureEntity{}) =
    let Vec3 px py pz = pentityPosition pe
        model = pentityModel pe
        normals = model
    in "PureEntity$" ++ show px ++ "$" ++ show py ++ "$" ++ show pz
        ++ "$" ++ 
