-- fun n = fun n-1 + fun n-2 + fun n-3
-- Path: fun.hs

import Control.Monad.State

funsState :: State (Integer, Integer, Integer, Integer) Integer
funsState =
  get >>= \(x1, x2, x3, n) ->
    if n == 0
      then return x1
      else put (x2, x3, x1 + x2 +x3, n - 1) >> funsState

fun :: Integer -> Integer
fun n = evalState funsState (0, 1, 2, n)

main = do
    print $ fun 0
    print $ fun 1
    print $ fun 2
    print $ fun 3
    print $ fun 4
    print $ fun 5

-- GHCi, version 8.10.6: https://www.haskell.org/ghc/  :? for help
-- Loaded GHCi configuration from /home/runner/ThreadbareMadLevel/.ghci
-- [1 of 1] Compiling Main             ( Main.hs, interpreted )
-- Ok, one module loaded.
-- > 0
-- 1
-- 2
-- 3
-- 6
-- 11
