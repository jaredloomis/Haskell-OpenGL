module Engine.Object.GameObject where

import Graphics.Rendering.OpenGL.Raw (GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec
import Engine.Model.Model

data GameObject = Player {
    playerPosition :: !(Vec3 GLfloat),
    playerRotation :: !(Vec3 GLfloat),
    playerUpdate :: GameObject -> GameObject,
    playerInput :: !Input
} | Entity {
    entityPosition :: !(Vec3 GLfloat),
    entityModel :: !Model
}

-- SOON!
{-
data GameObject a = Player {
    playerPosition :: !(Vec3 GLfloat),
    playerRotation :: !(Vec3 GLfloat),
    playerUpdate :: GameObject a -> GameObject a,
    playerInput :: !Input
} | Entity {
    entityPosition :: !(Vec3 GLfloat),
    entityModel :: !Model,
    entityAttribute :: !a
}
-}

data Input = Input {
    inputKeys :: ![(GLFW.Key, Bool, GameObject -> GameObject)],
    inputMouseDelta :: !(Vec2 GLfloat),
    inputLastMousePos :: !(Vec2 GLfloat)
}

updateObject :: GameObject -> GameObject
updateObject player@(Player{}) = playerUpdate player player
