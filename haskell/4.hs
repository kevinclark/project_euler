-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

products = [ x * y | x <- [100..999], y <- [100..999] ] 

isPalindrome x = show x == (reverse $ show x)

main = putStr $ show $ maximum $ filter isPalindrome products

-- $ time ./4                        (12-28 14:00)
-- 0.27s user 0.01s system 69% cpu 0.406 total

-- With -O
-- $ time ./4                        (12-28 14:18)
-- 0.19s user 0.01s system 96% cpu 0.202 total

