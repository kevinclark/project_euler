-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

-- Let x be 2
-- If x `mod` 2 == 0, set the largest value to 2 and call again
-- if not, increment

lpf :: Integer -> Integer -> Integer -> Integer

lpf currentMax n x
    | n > x = currentMax
    | x `mod` n == 0 = lpf n (n + 1) (x `div` n)
    | otherwise = lpf currentMax (n + 1) x

main = putStr $ show $ lpf 1 2 600851475143 
