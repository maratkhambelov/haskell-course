seqA :: Integer -> Integer
seqA n = helper 1 2 3 n

helper a b c 0 = a
helper a b c 1 = b
helper a b c 2 = c
helper a b c n = helper b c ((c + b) - 2 * a) (n - 1)

