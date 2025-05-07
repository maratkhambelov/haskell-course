isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = reversedL list [] == list  where
    reversedL [] acc = acc
    reversedL (x:xs) acc = reversedL xs (x:acc)




