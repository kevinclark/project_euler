-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?




reduction x reduceBy
    | reduceBy == 1 = x
    | (x `mod` reduceBy == 0) &&
        divByUptoTwenty (x `div` reduceBy) = reduction (x `div` reduceBy) reduceBy
    | otherwise = reduction x (reduceBy - 1)
    where divByUptoTwenty x = all (\y -> x `mod` y == 0) [1..20] 

main = putStr $ show $ reduction firstGuess 20
    where firstGuess = foldl (*) 1 [2..20]

