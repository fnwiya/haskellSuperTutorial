import Control.Monad
import Control.Exception

main =
    forM_ ["1", "a", "3"] $ \s ->
        print (read s :: Int)
                  `catch` \(SomeException _) -> 
                      print s
