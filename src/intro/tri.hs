main :: IO ()
main = do 
    print [(a, b, c) | a <- [1..20], b <- [1..20], c <- [1..20]
          , a * a + b * b == c * c]
