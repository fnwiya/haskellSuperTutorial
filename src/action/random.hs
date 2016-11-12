import System.Random

randAlpha = getStdRandom $ randomR ('a', 'z')
            
main :: IO ()
main = do 
    c <- randAlpha
    print c
    if r == 'z' then print "END" else main
