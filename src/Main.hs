module Main where

import Control.Monad.State (unless, evalState, execState)

import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Types (
    World(..), WorldState(..), Game(..),
     GameObject(..), Input(..))
import Engine.Graphics.Graphics
    (resizeScene, cleanupWorld,
     cleanupObjects)
import Engine.Core.Vec (Vec2(..), Vec3(..))
import Engine.Graphics.Window
    (Window(..), shutdown)
import Engine.Core.World (getWorldTime, setWorldPlayer)
import Engine.Object.Player (resetPlayerInput)
import Engine.Object.GameObject (updateWorld)
import Engine.Graphics.NewGraphics (renderWorldNewPost)
import Engine.Core.WorldCreator (createWorld, defaultSettings)

{-
import Engine.Model.AABB (AABB(..))
import Engine.Object.Octree

main' :: IO ()
main' = print $ findNearby (octInsert octree (AABB 23 46)) (AABB 38 93)
--print $ octInsert octree (AABB 23 46)
{-defaultMainWith defaultConfig (return ()) [
    bench "octree" $ whnf (findNearby octree) (AABB 20 20)
    ]
-}
octree :: Octree AABB
octree = createOctreeFromAABBs (AABB 0 1000) aabbs
aabbs :: [AABB]
aabbs = [let v = Vec3 x y z in AABB v (v+1)
          | x <- map func [low..high],
            y <- map func [low..high],
            z <- map func [low..high]]
  where
    low = 2
    high = 100
    func = (*2)
-}

main :: IO ()
main = do
    -- Create default world.
    world <- createWorld defaultSettings

    let Just win = windowInner $ stateWindow $ worldState world

    -- Register the function called when the window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)

    -- Make cursor Hidden.
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    -- Begin game loop.
    loop win world
    -- Delete stuff left in OpenGL.
    cleanupWorld world
    cleanupObjects $ worldEntities world
    -- Shutdown when game loop is done.
    shutdown win

    where
        loop :: GLFW.Window -> World t -> IO ()
        loop win world = do
            -- Check if any events have occured.
            GLFW.pollEvents

            -- Perform logic update on the world and render.
            newWorld <- updateStepComplete win world >>=
                    (`renderStep` win)

            --glGetError >>= \err ->
            --  if err /= gl_NO_ERROR then print err else return ()

            -- Swap back and front buffer.
            GLFW.swapBuffers win

            shouldClose <- GLFW.windowShouldClose win
            unless shouldClose $
                loop win newWorld

renderStep :: World t -> GLFW.Window -> IO (World t)
renderStep world _ =
    renderWorldNewPost world
    --renderWorldWithPostprocessing world
    --renderWorldNew world
    --renderWorldMat world
    --renderWorldWithShadows world

updateStepComplete :: GLFW.Window -> World t -> IO (World t)
updateStepComplete win world = do
    let wState = worldState world

    -- Set cursor as hidden or visible.
    GLFW.setCursorInputMode win $ if statePaused wState
        then GLFW.CursorInputMode'Normal
    else GLFW.CursorInputMode'Disabled

    -- Update the world time and delta.
    worldTime <- getWorldTime
    let delta = worldTime - stateTime wState
        newState = wState{
            stateTime = worldTime, stateDelta = delta}

    -- Update player input.
    player <- updatePlayerInput win $ worldPlayer world

    -- Update player
    let worldWithPlayer = world{worldPlayer = player, worldState = newState}
        updatedWorld =
            execState (gameState $ playerUpdate player) worldWithPlayer
        updatedWorldWithUpdatedPlayer =
            setWorldPlayer (resetPlayerInput $ worldPlayer updatedWorld)
                            updatedWorld

    -- Update the rest of the world.
    return $ evalState (gameState updateWorld) updatedWorldWithUpdatedPlayer

updatePlayerInput :: GLFW.Window -> GameObject t -> IO (GameObject t)
updatePlayerInput win player@(Player{}) = do
    let input = playerInput player
    newIn <- updateInput win input
    return $ player{
        playerInput = newIn
    }
updatePlayerInput _ _ =
    error $ "Main.updatePlayerInput can only"
        ++ " be used on Players."

updateInput :: GLFW.Window -> Input t -> IO (Input t)
updateInput win input = do
    let mousePos = inputLastMousePos input
    newKeys <- loopThrough win $ inputKeys input
    newMousePos <- mouseUpdate win
    return input {
        inputKeys = newKeys,
        inputMouseDelta = newMousePos - mousePos
    }

    where
    loopThrough ::
        GLFW.Window ->
        [(GLFW.Key, GLFW.KeyState, GLFW.KeyState, World t -> World t)] ->
        IO [(GLFW.Key, GLFW.KeyState, GLFW.KeyState, World t -> World t)]
    loopThrough w ((key, desired, lastState, func) : others) = do
        returnedState <- GLFW.getKey w key

        let keyState
                | returnedState == GLFW.KeyState'Released =
                    GLFW.KeyState'Released
                | returnedState == GLFW.KeyState'Pressed &&
                    (lastState == GLFW.KeyState'Pressed ||
                     lastState == GLFW.KeyState'Repeating) =
                    GLFW.KeyState'Repeating
                | otherwise = GLFW.KeyState'Pressed

        let curVal = (key, desired, keyState, func)
        restVal <- loopThrough win others
        return $ curVal : restVal
    loopThrough _ [] = return []

    mouseUpdate :: GLFW.Window -> IO Vec2
    mouseUpdate w = do
        (x, y) <- GLFW.getCursorPos w
        return $ Vec2 (realToFrac x) (realToFrac y)
