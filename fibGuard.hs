fib n
    | n == 0 = 0
    | n == 1 = 1
    | n > 1 = fib (n - 1) + fib(n - 2)
              
main :: IO ()
main = do 
    print $ fib 10
