qsort [] =  return []
qsort (n:xs) = do
    let lt = [x | x <- xs, x < n]
        gteq = [x | x <- xs, x >= n]
    putStrLn $ "qsort " ++ show (n:xs) ++ " = qsort " ++ 
             show lt ++ " ++ " ++ show [n] ++ " + " ++ show gteq
    lt' <- qsort lt
    gteq' <- qsort gteq
    return $ lt' ++ [n] ++ gteq'
           
main :: IO ()
main = do 
    print =<< qsort [4, 6, 9, 8, 34, 6, 2]
