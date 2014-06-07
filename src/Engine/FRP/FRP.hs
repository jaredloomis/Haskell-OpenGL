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

import Debug.Trace (trace)

import qualified FRP.Netwire as N
import FRP.Netwire ((-->), (<&), (&>))
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

countN :: (Monad m, HasTime t s) => Wire s () m () Double
countN = N.integral 0 . 1

test2 :: (Monad m, HasTime t s) => Wire s () m () String
test2 = N.for 3 . "First" --> N.for 3 . "Second"

events :: (HasTime t s, Monad m) => Wire s () m () t
events = N.asSoonAs . (N.at 2 &> N.at 3) . N.time

inParallel :: Wire s e m a a
inParallel = N.evalWith rpar

test :: Monad m => Wire s () m () Double
test = pure 15

clock :: (Monad m, HasTime b s) => Wire s e m a b
clock = 60 - 2*N.time

mainN :: IO ()
mainN = control (\i -> putStrLn ("Inhibited: " ++ show i) >> hFlush stdout)
                (\p -> putStrLn ("Produced: " ++ show p)  >> hFlush stdout)
                (inParallel . events)
