data Rect = Rect { x :: Int, y :: Int, w :: Int, h :: Int } deriving Show
data Point = Point { px :: Int, py :: Int } deriving Show


contains :: Rect -> Point -> Bool
contains (Rect x y w h) (Point px py) = px >= x && px < x + w && py >= y && py < y + h

main :: IO ()
main = do
    print $ contains Rect { x = 2, y = 2, w = 3, h = 3 } Point { px = 1, py = 1 }
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)
