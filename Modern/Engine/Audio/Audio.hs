module Engine.Audio.Audio (
    setAudioMainVolume, Audio(..),
    loadAudio, playAudio, pauseAudio,
    stopAudio, setAudioVolume, setAudioLoop,
    destroyAudio
) where

import Control.Applicative ((<$>))

import SFML.Audio

import Engine.Audio.Types (Audio(..))

setAudioMainVolume :: Float -> IO ()
setAudioMainVolume = setGlobalVolume

loadAudio :: FilePath -> IO Audio
loadAudio file = Audio file 100 <$> err (musicFromFile file)

playAudio :: Audio -> IO ()
playAudio = play . audioInner

pauseAudio :: Audio -> IO ()
pauseAudio = pause . audioInner

stopAudio :: Audio -> IO ()
stopAudio = stop . audioInner

setAudioVolume :: Audio -> Float -> IO ()
setAudioVolume = setVolume . audioInner

setAudioLoop :: Audio -> Bool -> IO ()
setAudioLoop = setLoop . audioInner

destroyAudio :: Audio -> IO ()
destroyAudio = destroy . audioInner
