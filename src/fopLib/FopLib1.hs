module FopLib1 where

intervalFunction :: [Int] -> String
intervalFunction parameterList
    | length parameterList == 71 = "Diese Funktion hat 71 Elemente als Parameter erhalten."
    | otherwise = "Die übergebene Liste enthält nicht 71 Elemente."

numbersSet :: [Int]
numbersSet = [0..70]