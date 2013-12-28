module Object where

import Types

updateObject :: Object -> Object
updateObject player@(Player{}) = playerUpdate player player
