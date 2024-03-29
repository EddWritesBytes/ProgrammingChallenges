-- Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1 
fib n = fib (n - 1) + fib (n - 2)

main = do
    -- Todo: Check if Haskell can cache results like this or if it's actually calculated three times
    print $ sum $ [ if even fib x `mod` 2 == 0 && fib x <= 4000000 then fib x else 0 | x <- [1..35] ]
