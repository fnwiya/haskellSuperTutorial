sum' [] = 0
sum' (x:xs) = x + sum' xs
              
main :: IO ()
main = do 
    print $ sum' [1, 2, 3]
