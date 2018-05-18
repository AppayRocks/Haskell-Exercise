import Data.List

main :: IO()
main = putStrLn $ prettyPrint $ collectNode defaultTree

data Tree a = Empty
            | Node a (Tree a) (Tree a)
     deriving (Show)

defaultTree :: Tree Int
defaultTree =
    Node 2
        (Node 1
            (Node 0 Empty Empty)
            (Node 7 Empty Empty)
        )
        (Node 3
            (Node 9 Empty Empty)
            (Node 1 Empty Empty)
        )

collectNode       :: Tree a -> [[a]]
collectNode Empty = []
collectNode (Node weight treeL treeR)
                  = [weight] : mergeTree (collectNode treeL) (collectNode treeR)

mergeTree               :: [[a]] -> [[a]] -> [[a]]
mergeTree [] ys         = ys
mergeTree xs []         = xs
mergeTree (x:xs) (y:ys) = (x ++ y) : mergeTree xs ys

prettyPrint       :: Show a => [[a]] -> String
prettyPrint []    = ""
prettyPrint listT = concatMap f listT where
    f (x:[]) = "(" ++ show x ++ ")\n"
    f (x:xs) = "(" ++ show x ++ ")," ++ f xs
