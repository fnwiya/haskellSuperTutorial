data Color = Blue | Red | Magenta | Green | Cyan | Yellow | White
    deriving (Show, Eq)

mix Blue    Red       = Magenta
mix Blue    Magenta   = Magenta
mix Blue    Green     = Cyan
mix Blue    Cyan      = Cyan
mix Blue    Yellow    = White
mix Red     Magenta   = Magenta
mix Red     Green     = Yellow
mix Red     Cyan      = White
mix Red     Yellow    = Yellow
mix Magenta Green     = White
mix Magenta Cyan      = White
mix Magenta Yellow    = White
mix Green   Cyan      = Cyan
mix Green   Yellow    = Yellow
mix Cyan    Yellow    = White
mix White   _         = White
mix c1 c2 | c1 == c2  = c1
          | otherwise = mix c2 c1

main :: IO ()
main = do
    print $ mix Blue Blue
    print $ mix Red Blue
    print $ mix Red $ mix Blue Green
