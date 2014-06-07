module Engine.Audio.Types where

import SFML.Audio

data Audio = Audio {
    audioFile :: FilePath,
    audioVolume :: Float,
    audioInner :: Music
}
