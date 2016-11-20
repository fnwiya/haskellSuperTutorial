import Control.Monad.Identity
import Control.Monad.State hiding (return, runState)
    
return' x = StateT $ \s -> Identity (x, s)
runState' st = runIdentity . runStateT st
               
main = do
    let st = return' 1
    print $ runState' st ()
