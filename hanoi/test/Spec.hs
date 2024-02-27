import Lib (hanoi)
import Test.QuickCheck

prop_hanoi :: Int -> Property
prop_hanoi n =
  n > 0
    && n
      <= 20
    ==> let moves = hanoi n "A" "B" "C"
         in length moves == 2 ^ n - 1

main :: IO ()
main = quickCheck prop_hanoi
