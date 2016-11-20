import Control.Monad
import Data.Either
    
fizzBuzz x = either id id $ do
                 when (x `mod` 3 == 0 && x `mod` 5 == 0) $ Left "FizzBuzz"
                 when (x `mod` 3 == 0) $ Left "Fizz"
                 when (x `mod` 5 == 0) $ Left "Buzz"
                 return $ show x
                 
main :: IO ()
main = do 
    forM_ [1..15] $ \i -> 
        putStrLn $ fizzBuzz i
