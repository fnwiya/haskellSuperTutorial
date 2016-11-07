import Data.Char
    
_rot13 ch
    | 'A' <= ch && ch <= 'M'
      || 'a' <= ch && ch <= 'm' = chr $ ord ch + 13
    | 'N' <= ch && ch <= 'Z'
      || 'n' <= ch && ch <= 'z' = chr $ ord ch - 13
    | otherwise = ch
                  
rot13 "" = ""
rot13 (x:xs) = _rot13 x : rot13 xs
               
main :: IO ()
main = do 
    let t = "hello"
    print $ rot13 t
