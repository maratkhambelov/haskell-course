sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x | abs (x) < 10 = ((abs x), 1)
              | otherwise = (toInteger sumX, count)
    where 
        sumX = sum (map (\c -> fromEnum c - fromEnum '0') list)
        count = toInteger (length list) 
        list = show (abs x) 