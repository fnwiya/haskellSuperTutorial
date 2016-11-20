test x = 
    let a = (+ 1) x
        b = (* 2) x
    in (a, b)
main :: IO ()
main = do 
    print $ test 5
