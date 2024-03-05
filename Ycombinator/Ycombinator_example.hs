yCombinator :: (a -> a) -> a
yCombinator f = f (yCombinator f)

factorialFunction :: (Integer -> Integer) -> Integer -> Integer
factorialFunction _ 0 = 1
factorialFunction recur n = n * recur (n - 1)

factorial :: Integer -> Integer
factorial = yCombinator factorialFunction
