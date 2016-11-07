insert x [] = [x]
insert x (y:ys)
       | x < y = x:y:ys
       | otherwise = y:insert x ys

isort [] = []
isort (x:xs) = insert x (isort xs)
               
main :: IO ()
main = do 
    print $  isort [4, 6, 9, 8, 3, 5, 2, 7, 2]
