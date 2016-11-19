bind (Just a) f = f a
bind Nothing _ = Nothing
main = do
    print $ Just 1 `bind` \a -> Just $ a * 2
    print $ Just 1 `bind` \a -> Nothing `bind` \b -> Just $ a * b
