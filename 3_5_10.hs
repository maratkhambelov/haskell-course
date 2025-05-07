evenOnly :: [a] -> [a]
evenOnly = helper [] 1

helper [] idx = []
helper (x:xs) idx 
    | even idx = x : helper xs (idx + 1)
    | otherwise = helper xs (idx + 1)

-- evenOnly = fst . foldr (\x (xs, idx) -> if even idx then (x:xs, idx+1) else (xs, idx+1)) ([], 1)
