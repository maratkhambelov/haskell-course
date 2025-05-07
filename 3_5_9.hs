evenOnly :: [a] -> [a]
evenOnly = reverse . fst . foldl (\(xs, idx) x -> if even idx then (x:xs, idx+1) else (xs, idx+1)) ([], 1)
