{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE MonoLocalBinds #-}

module FopLib1 where
import GHC.TypeLits
import Data.Proxy

type LengthNumbersSet = 71

intervalFunction :: [Int] -> String
intervalFunction parameterList
    | length parameterList == 71 = "Diese Funktion hat 71 Elemente als Parameter erhalten."
    | otherwise = "Die übergebene Liste enthält nicht 71 Elemente."

numbersSet :: [Int]
numbersSet = [0..70]

class KnownNat n => HasNat n where
    getNat :: Proxy n
    getNat = Proxy

secondIntervalFunction :: forall n. HasNat n => [Int] -> String
secondIntervalFunction parameterList
    | length parameterList == fromIntegral (natVal (getNat :: Proxy n)) = "Diese Funktion hat 71 Elemente als Parameter erhalten."
    | otherwise = error "Die übergebene Liste enthält nicht 71 Elemente."

instance KnownNat LengthNumbersSet => HasNat LengthNumbersSet

secondIntervalFunctionFinal :: [Int] -> String
secondIntervalFunctionFinal = secondIntervalFunction @LengthNumbersSet