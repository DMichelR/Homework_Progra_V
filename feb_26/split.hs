split :: String -> Char -> [String]
split [] _ = []
split (x : xs) c
  | x == c = split xs c
  | otherwise =
