-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

import Data.List

convertToStrings :: [Int] -> [String]
convertToStrings = map show

convertToInts :: [String] -> [Int]
convertToInts = map read

checkPalindrone :: String -> Bool
checkPalindrone x = if x == reverse x then True else False

cartesianProduct :: [Int] -> [Int] -> [Int]
cartesianProduct xs ys = [ x * y | x <- xs, y <- ys]

main = do
    let allValues = cartesianProduct [100..999] [100..999]
    let palindromeStrings = filter (checkPalindrone) $ convertToStrings allValues
    print $ last $ Data.List.sort $ convertToInts palindromeStrings
