fact 0 = 1
fact n | n > 0 = product [1..n]

main :: IO ()
main = do 
    print $ fact 5
