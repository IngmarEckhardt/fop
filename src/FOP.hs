{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}

module Main where

import FopLib1


import GHC.TypeLits
import Data.Proxy

main :: IO ()

main = putStrLn $ secondIntervalFunctionFinal numbersSet