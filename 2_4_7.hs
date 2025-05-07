
class (Enum a, Bounded a) => SafeEnum a where
  ssucc :: a -> a
  ssucc a
    | succ a == a = a
    | otherwise = minBound

  spred :: a -> a
  spred a 
    | pred a == a = a
    | otherwise = maxBound