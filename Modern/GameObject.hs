module GameObject where

import Types

updateObject :: GameObject -> GameObject
updateObject player@(Player{}) = playerUpdate player player
