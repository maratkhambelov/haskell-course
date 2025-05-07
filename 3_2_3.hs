import Data.Char (isDigit)

readDigits :: String -> (String, String)
readDigits [] = []
readDigits (x:xs) | isDigit x = 
    readDigits xs

-- readDigits :: String -> (String, String)
-- readDigits str = takeWhile isDigit str
