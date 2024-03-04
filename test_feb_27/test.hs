convertToInt :: String -> Int
convertToInt str = read str :: Int

parseStudents :: String -> [(String, Int)]
parseStudents str = map (\x -> (head x, convertToInt (last x))) (map words (wordsWhen (==',') str))
    where wordsWhen p s =  case dropWhile p s of
                              "" -> []
                              s' -> w : wordsWhen p s''
                                    where (w, s'') = break p s'

averageAge :: [(String, Int)] -> Float
averageAge students = fromIntegral (sum (map snd students)) / fromIntegral (length students)

studentNames :: [(String, Int)] -> [String]
studentNames students = map fst students

studentsWithAgeLessThan :: Int -> [(String, Int)] -> [(String, Int)]
studentsWithAgeLessThan age students = filter (\(_, a) -> a < age) students

studentsWithAgeRange :: Int -> Int -> [(String, Int)] -> [(String, Int)]
studentsWithAgeRange x y students = filter (\(_, a) -> a >= x && a <= y) students

main :: IO ()
main = do
    let studentList = "Ana 25, Jose 37, Maria 23, John 33"
    let students = parseStudents studentList
    putStrLn $ "Average Age: " ++ show (averageAge students)
    putStrLn $ "List of Student Names: " ++ show (studentNames students)
    putStrLn $ "Students with age less than 30: " ++ show (studentsWithAgeLessThan 30 students)
    putStrLn $ "Students with age range between 20 and 30: " ++ show (studentsWithAgeRange 20 30 students)

