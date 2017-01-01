globalName = "s"

pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts
    where plural 0 = "no " ++ word ++ globalName
          plural 1 = "one " ++ word
          plural n = show n ++ " " ++ word ++ globalName

casePlural word counts = map plural counts
    where plural n = case n of
            0 -> "no " ++ word ++ globalName
            1 -> "one " ++ word
            _ -> show n ++ " " ++ word ++ globalName