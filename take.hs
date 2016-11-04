take' _ [] = []
take' n _ | n < 1 = []
take' n (x:xs) = x : take' (n - 1) xs
                 
main :: IO ()
main = do 
    print $ take' 3 [1, 2, 3, 4, 5]
