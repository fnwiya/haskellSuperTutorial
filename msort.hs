merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
      | x < y = x: merge xs (y:ys)
      | otherwise = y: merge (x:xs) ys
                    
msort [] = []
msort [x] = [x]
msort xs = merge (msort (take h xs)) (msort (drop h xs))
    where
        h = (length xs) `div` 2
            
main :: IO ()
main = do 
    print $ msort [4, 6, 9, 8, 3, 1]
