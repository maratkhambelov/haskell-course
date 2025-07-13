import Control.Monad.Reader
import Control.Monad.State (state, State)

readerToState :: Reader r a -> State r a
readerToState m = state (\r -> (runReader m r, r))
