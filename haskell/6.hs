-- The sum of the squares of the first ten natural numbers is,
-- 1^(2) + 2^(2) + ... + 10^(2) = 385

-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)^(2) = 55^(2) = 3025

-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sumOfSquares ceil = sum $ map (^ 2) [1..ceil]
squareOfSums ceil = (sum [1..ceil]) ^ 2

main = putStr $ show $ abs $ (sumOfSquares 100) - (squareOfSums 100)

-- $ time ./6                        (12-28 14:09)
-- 0.00s user 0.00s system 81% cpu 0.006 total

