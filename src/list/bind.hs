bind xs f = foldr ((++) . f) [] xs
return' x = [x]
main = do
    print $ [1..3] `bind` \x -> "abc" `bind` \y -> return' (x, y)
