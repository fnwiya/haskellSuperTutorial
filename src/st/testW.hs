import Control.Monad.Writer
    
test = execWrite $ do
           tell "Hello"
           tell ", "
           tell "World"
           tell "!!"
           return ()
                  
main :: IO ()
main = do 
    print test
