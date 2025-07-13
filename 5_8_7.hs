import Control.Monad.State (State, state)
import Control.Monad.Writer (Writer, execWriter, runWriter)

writerToState :: (Monoid w) => Writer w a -> State w a
writerToState m =
  state
    ( \r ->
        let (a, w) = runWriter m
         in (a, r <> w)
    )
