-- -- newtype Maybe' a = Maybe' { getMaybe :: Maybe a }
-- --     deriving (Eq,Show)

-- -- instance Monoid a => Monoid (Maybe' a) where
-- --     mempty = Maybe' (Just mempty)
-- --     mappend (Maybe' Nothing) y = y
-- --     mappend x (Maybe' Nothing) = x
-- --     mappend (Maybe' (Just x)) (Maybe' (Just y)) = Maybe' (Just (x mappend  y))

-- newtype Maybe' a = Maybe' {getMaybe :: Maybe a}
--   deriving (Eq, Show)

-- instance (Monoid a) => Monoid (Maybe' a) where
--   mempty = Maybe' (Just mempty)

--   mappend (Maybe' Nothing) y = y
--   mappend x (Maybe' Nothing) = x
--   mappend (Maybe' (Just x)) (Maybe' (Just y)) = Maybe' (Just ( mappend x y))
