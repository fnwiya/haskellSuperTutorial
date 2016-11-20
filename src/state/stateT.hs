import Data.Char
import Control.Monad.State
    
getch f = StateT getch where
    getch (x:xs) | f x = Just (x, xs)
    getch _ = Nothing
              
test = evalStateT $ do
           ch1 <- getch isUpper
           ch2 <- getch isLower
           ch3 <- getch isDigit
           return [ch1, ch2, ch3]
                  
main :: IO ()
main = do 
    print $ test "As0"
    print $ test "abc"
