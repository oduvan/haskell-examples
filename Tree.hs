data Tree a = Node a (Tree a) (Tree a)
	| Empty
	deriving (Show)

simpleTree = Node "parent" (Node "Left child" Empty Empty) (Node "Right child" Empty Empty)