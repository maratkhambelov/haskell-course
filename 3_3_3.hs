fibStream :: [Integer]
fibStream = zipWith helper [0] [1]

helper (a:as) (b:bs) = a : helper bs ((a + b) : bs)

