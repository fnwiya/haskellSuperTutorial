qsort [] = []
qsort (n:xs) = qsort lt ++ [n] ++ qsort qteq
    where
        lt = [x | x <- xs, x < n]
        qteq = [x | x <- xs, x >= n]
               
main :: IO ()
main = do 
    print $ [3, 5, 2, 8, 6]
