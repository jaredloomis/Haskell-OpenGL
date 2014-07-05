{-# LANGUAGE FlexibleContexts #-}
module Engine.Object.GameObject (
    updateWorld,
    getModel
) where

import Control.Monad.State (get)

import Engine.Core.Types
    (Game, World(..), Entity(..))
import Engine.Mesh.Mesh (Mesh(..))

updateWorld :: Game t (World t)
updateWorld = do
    world <- get
    newObjs <- updateEntities
    return world{worldEntities = newObjs}

updateEntities :: Game t [Entity t]
updateEntities = do
    world <- get
    mapM (\o -> entityUpdate o o) (worldEntities world)

getModel :: Entity t -> Mesh
getModel pe@(Entity{}) = entityModel pe
