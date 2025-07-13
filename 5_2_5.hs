import Control.Monad.Writer (Writer, writer, execWriter, runWriter)
import Data.Monoid (Sum(..))


type Shopping = Writer (Sum Integer, [String]) () 

purchase :: String -> Integer -> Shopping
purchase item cost = writer ((), (Sum cost, [item]) )

total :: Shopping -> Integer
total = getSum . fst . snd . runWriter

items :: Shopping -> [String]
items = snd . snd . runWriter

shopping1 :: Shopping
shopping1 = do
  purchase "Jeans"   19200
  purchase "Water"     180
  purchase "Lettuce"   328

