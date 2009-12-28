-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

lpf :: Integer -> Integer -> Integer -> Integer

lpf currentMax n x
    | n > x = currentMax
    | x `mod` n == 0 = lpf n (n + 1) (x `div` n)
    | otherwise = lpf currentMax (n + 1) x

main = putStr $ show $ lpf 1 2 600851475143 

-- time ./3                        (12-28 14:02)
-- 0.00s user 0.01s system 9% cpu 0.116 total
