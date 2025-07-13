import Control.Monad.State (State, execState, runState, state)
import Control.Monad.Trans.Writer (execWriter, runWriter, writer)

fibStep :: State (Integer, Integer) ()
fibStep = state (\(a, b) -> ((), (b, a + b)))

execStateN :: Int -> State s a -> s -> s
execStateN 0 _ s = s
execStateN n m s =
  let newState = execState m s
   in execStateN (n - 1) m newState

   