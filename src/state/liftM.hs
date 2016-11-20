import Control.Monad
    
main :: IO ()
main = do 
    print $ liftM2 (,) [0, 1] [0, 2]
    print $ liftM2 (+) [0, 1] [0, 2]
