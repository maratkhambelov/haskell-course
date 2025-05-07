import Prelude hiding (zip, zip3, unzip)

unzip :: [(a,b)] -> ([a], [b])
unzip []                = ([], [])
unzip ((x, y) : xys)    =
    let (xs, ys) = unzip xys
    in (x : xs, y : ys)
