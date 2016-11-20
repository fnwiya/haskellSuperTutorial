import Control.Exception
import Control.Monad

main = do
    forM_ [0..3] $ \i -> do
        a <- try $ evaluate $ 6 `div` i
        print (a :: Either SomeException Int)
