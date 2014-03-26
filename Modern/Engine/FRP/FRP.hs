{-# LANGUAGE RecursiveDo #-}
module FRP where

import FRP.Elerea.Simple
import Control.Monad

driveNetwork :: IO (IO a) -> IO a
driveNetwork = forever . join
