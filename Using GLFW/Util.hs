module Util where

import Data.Time.Clock (DiffTime, getCurrentTime, utctDayTime)
import Control.Monad (liftM)

systemTime :: IO DiffTime
systemTime = liftM utctDayTime getCurrentTime
