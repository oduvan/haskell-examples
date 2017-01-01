data MaybeOne a = JustOne a
             | NothingOne
             deriving (Show)

someBool = JustOne True

someString = JustOne "Some string"

jj = JustOne (JustOne "Something")

safeSecond :: [a] -> MaybeOne a

safeSecond [] = NothingOne
safeSecond xs = if null (tail xs) then NothingOne else JustOne (head(tail xs))

tidySecond :: [a] -> MaybeOne a

tidySecond (_:x:_) = JustOne x
tidySecond _ = NothingOne