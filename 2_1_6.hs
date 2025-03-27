import Data.Function

multSecond = g `on` h

g a b = a * b

h x = snd x
