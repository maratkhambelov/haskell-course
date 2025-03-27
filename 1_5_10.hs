fibonacci :: Integer -> Integer
fibonacci n | n < 0 = abs (helper 0 (-1) (abs n))
            | otherwise = helper 0 1 n

helper a b 0 = a
helper a b n = helper b (a + b) (n - 1)
