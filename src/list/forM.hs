import Control.Monad
    
main :: IO ()
main = do
    print $ join $
          forM [1..3] $ \x -> 
              forM "abc" $ \y -> 
                   return (x, y)
