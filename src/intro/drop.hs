drop' _ [] = []
drop' n xs | n < 1 = xs
drop' n (_:xs) = drop' (n - 1) xs

main :: IO ()
main = do 
    print $ drop' 3 [1, 2, 3, 4, 5]
