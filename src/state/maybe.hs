import Data.Char
    
getch f (x:xs) | f x = Just (x, xs)
getch _ _ = Nothing
            
test s0 = do
    (ch1, s1) <- getch isUpper s0
    (ch2, s2) <- getch isLower s1
    (ch3, s3) <- getch isDigit s2
    return [ch1, ch2, ch3]
           
main :: IO ()
main = do 
    print $ test "Aa0"
    print $ test "abc"
