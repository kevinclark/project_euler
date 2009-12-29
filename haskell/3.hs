-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

isPrime :: Integer -> Bool
isPrime x
    | x == 2 = True
    | otherwise = all (\y -> x `mod` y /= 0) (2:[3,5..ceil])
        where ceil = floor $ sqrt $ fromInteger x

primes :: [Integer]
primes = [ x | x <- 2 : [3,5..], isPrime x ]

lpf x = lf x 1 primes
    where lf x' m (p:ps)
            | p > x' = m
            | x' `mod` p == 0 = lf (x' `div` p) p (p:ps)
            | otherwise = lf x' m ps

main = putStr $ show $ lpf 600851475143 

-- $ time ./3                        (12-29 04:32)
-- 0.01s user 0.00s system 83% cpu 0.016 total

