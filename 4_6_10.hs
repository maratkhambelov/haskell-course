
import Prelude hiding (lookup)
import qualified Data.List as L

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v
    fromList [] = empty
    fromList ((k,v):xs) = insert k v (fromList xs)

newtype ListMap k v = ListMap { getListMap :: [(k,v)] }
    deriving (Eq,Show)

instance MapLike ListMap where 
    empty = ListMap []
    lookup key (ListMap xs) = L.lookup key xs
    delete key (ListMap xs) = ListMap $ filter (\(k,_) -> k /= key) xs

    insert :: Ord k => k -> v -> ListMap k v -> ListMap k v
    insert key value (ListMap xs) = ListMap $ (key, value) : filter (\(k, _) -> k /= key) xs