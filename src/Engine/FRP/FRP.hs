{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
module Engine.FRP.FRP where

import Prelude hiding ((.))
import Data.Monoid (Monoid)
import Control.Monad.Identity
import Control.Applicative
import Data.Time (NominalDiffTime)
import Control.Monad.IO.Class
import System.IO
import Control.Parallel.Strategies
--import Control.Arrow hiding (loop)

import Debug.Trace (trace)

import qualified FRP.Netwire as N
import FRP.Netwire ((-->), (&>))
import qualified Control.Wire.Core as C
import qualified Control.Wire.Session as S
import FRP.Netwire (Wire, HasTime, (.))

import qualified FRP.Elerea.Simple as E
import FRP.Elerea.Simple (SignalGen, Signal)

-- = Elerea

mainE :: IO ()
mainE = loop $ networkMove recieveInput

driveNetwork :: Show a => SignalGen (Signal a) -> IO ()
driveNetwork = forever . (\x -> join x >>= print) . E.start

driveFor :: Show a => Int -> SignalGen (Signal a) -> IO ()
driveFor i x =
    E.start x >>= replicateM i >>= print

loop :: Show a => SignalGen (Signal a) -> IO ()
loop signal =
    E.start signal >>= fix ((>>) <$> (>>= print) <*>)

recieveInput :: SignalGen (Signal Bool)
recieveInput = E.effectful $ do
    putStr "Continue? "
    ln <- getLine
    if ln == "yes"
        then putStrLn "True" >> return True
    else putStrLn "False" >> return False

networkMove :: SignalGen (Signal Bool) -> SignalGen (Signal Integer)
networkMove tBool = do
    rec let final = do
            b <- tBool >>= E.snapshot
            E.delay 1 =<<
                if b
                    then trace "true" $ foldp (const (+1)) 1 $ return first
                else trace "false" $ foldp (const (subtract 1)) 1 $ return first
        first <- final >>= E.delay 1 :: SignalGen (Signal Integer)
    final

networkFib :: SignalGen (Signal Integer)
networkFib = do
    rec let fib'' = (+) <$> fib' <*> fib
        fib' <- E.delay 1 fib''
        fib <- E.delay 1 fib'
    return fib

-- Elerea utils.

-- | Create a signal that never changes.
constant :: a -> SignalGen (Signal a)
constant = return . return

-- | Applies a function to a signal producing a new signal.
(<~) :: (a -> b) -> SignalGen (Signal a) -> SignalGen (Signal b)
(<~) = fmap . fmap

infixl 4 <~

-- | Applies a function within a signal to a signal.
(~~) :: SignalGen (Signal (a -> b)) ->
        SignalGen (Signal a) ->
        SignalGen (Signal b)
(~~) = (<*>) . fmap (<*>)

infixl 4 ~~

-- | Creates a past-dependent signal that depends on another signal.
--   This is a wrapper around the 'transfer' function that
--   automatically binds the input signal out of the signal
--   generator.
foldp :: (a -> b -> b) -> b -> SignalGen (Signal a) -> SignalGen (Signal b)
foldp f ini = (>>= E.transfer ini f)

-- | Creates a signal that counts the amount of
--   times it has been sampled.
count :: SignalGen (Signal Int)
count = E.stateful 0 (+1)

-- | Creates a signal that counts the amount of times an
--   input signal has passed a predicate when sampled.
countIf :: (a -> Bool) -> SignalGen (Signal a) -> SignalGen (Signal Int)
countIf f = foldp (\v c -> c + fromEnum (f v)) 0

-------------
-- Netwire --
-------------

control :: (Applicative m, MonadIO m, Monoid e) =>
    (e -> m ()) ->
    (b -> m ()) ->
    Wire (S.Timed NominalDiffTime ()) e Identity () b ->
    m b1
control whenInhibited whenProduced =
    loopN N.clockSession_
  where
    loopN session' wire' = do
        (ds, s) <- S.stepSession session'
        let Identity (mx, w) = C.stepWire wire' ds (Right ())
        _ <- case mx of
            Left ex -> whenInhibited ex
            Right x -> whenProduced x
        loopN s w
controlIO :: (MonadIO m, Applicative m) =>
             (e -> m ()) ->
             (a -> m ()) ->
             Wire (S.Timed NominalDiffTime ()) e m a a ->
             a ->
             m ()
controlIO whenInhibited whenProduced =
    loopN N.clockSession_
  where
    loopN session wire val = do
        (ds, s) <- S.stepSession session
        (mx, w) <- C.stepWire wire ds (Right val)
        case mx of
            Left ex -> do
                whenInhibited ex
            Right x -> do
                whenProduced x
                loopN s w x

controlIO_ :: (MonadIO m, Applicative m) =>
              (e -> m ()) ->
              (b -> m ()) ->
              Wire (S.Timed NominalDiffTime ()) e m () b ->
              m ()
controlIO_ whenInhibited whenProduced =
    loopN N.clockSession_
  where
    loopN session wire = do
        (ds, s) <- S.stepSession session
        (mx, w) <- C.stepWire wire ds (Right ())
        _ <- case mx of
            Left ex -> do
                whenInhibited ex
            Right x -> do
                whenProduced x
        loopN s w

inputWire :: Monoid s => Wire s e IO (Int, Int) (Int, Int)
inputWire = C.mkGenN trans
  where
    trans (x, y) = do
        input <- hGetChar stdin
        let newCoord =
                case input of
                    'a' -> (x-1, y)
                    'd' -> (x+1, y)
                    'w' -> (x, y+1)
                    's' -> (x, y-1)
                    _   -> (x, y)
        return (Right newCoord, inputWire)

keyPress :: Wire s e IO () (N.Event Char)
keyPress = keyCheck . getKey

keyCheck :: Wire s e m Char (N.Event Char)
keyCheck = N.became (`elem` keys)
  where
    keys = ['a', 'd', 'w', 's']

getKey :: Wire s e IO a Char
getKey = C.mkGen_ trans
  where
    trans _ = Right <$> hGetChar stdin

playerWire :: HasTime t s => Wire s () IO () (Int, Int)
playerWire = N.holdFor 1 . playerEvent

playerEvent :: Wire s e IO () (N.Event (Int, Int))
playerEvent = N.accumE move (0, 0) . keyPress
  where
    move (x, y) key =
        case key of
            'a' -> (x-1, y)
            'd' -> (x+1, y)
            'w' -> (x, y+1)
            's' -> (x, y-1)
            _   -> (x, y)

gameWire :: (HasTime t s) => Wire s () IO () String
gameWire = monster . playerWire

monster :: (HasTime t s, Monoid e, Monoid s) => Wire s e IO (Int, Int) String
monster = "Roar!!!" . N.holdFor 1 . atMonster -- <|> "Snore..."

atMonster :: Wire s e m (Int, Int) (N.Event (Int, Int))
atMonster = N.became (==(0,1))

liftIOToWire :: Monoid s => (a -> IO b) -> Wire s e IO a b
liftIOToWire f = C.mkGen trans
  where
    trans _ value = do
        x <- f value
        return (Right x, liftIOToWire f)

printWire :: Monoid s => Wire s e IO Int Int
printWire = C.mkGen trans
  where
    trans _ a = do
        putStrLn $ "Hello" ++ show a
        return (Right (a+1), printWire)

countN :: (Monad m, HasTime t s) => Wire s () m () Double
countN = N.integral 0 . 1

sequenced :: (Monad m, HasTime t s) => Wire s () m () String
sequenced = N.for 3 . "First" --> N.for 3 . "Second"

events :: (HasTime t s, Monad m) => Wire s () m () t
events = N.asSoonAs . (N.at 2 &> N.at 3) . N.time

inParallel :: Wire s e m a a
inParallel = N.evalWith rpar

mainN :: IO ()
mainN = controlIO_
    (const $ putStrLn "Inhibited" >> hFlush stdout)
    (\p -> putStrLn ("Produced: " ++ show p) >> hFlush stdout)
    (playerWire)

{-
mainN :: IO ()
mainN = controlIO
    (const $ putStrLn "Inhibited" >> hFlush stdout)
    (\p -> putStrLn ("Produced: " ++ show p) >> hFlush stdout)
    (inputWire)
    (0, 0)
-}
