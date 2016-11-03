product' [] = 1
product' (x:xs) = x * product' xs
              
main :: IO ()
main = do 
    print $ product' [1, 2, 3]
