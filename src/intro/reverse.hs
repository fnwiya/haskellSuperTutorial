reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
                  
main :: IO ()
main = do 
    print $ reverse' [1, 2, 3, 4, 5]
