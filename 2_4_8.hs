avg :: Int -> Int -> Int -> Double
avg a b c = (toConvert (a) + toConvert(b) + toConvert(c)) / 3

toConvert a = fromIntegral(a)