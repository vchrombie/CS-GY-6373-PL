-- maximum of a list of numbers using recursion
max_list_numbers :: (Ord a) => [a] -> a
max_list_numbers [] = error "empty list"
max_list_numbers [x] = x
max_list_numbers (x : xs) = max x (max_list_numbers xs)

-- program that succeeds if the intersection of two given list parameters is empty using recursion
intersection_empty :: (Eq a) => [a] -> [a] -> Bool
intersection_empty [] _ = True
intersection_empty _ [] = True
intersection_empty (x : xs) ys = not (elem x ys) && intersection_empty xs ys

-- program that returns a list containing the union of the elements of two given lists using recursion
union_lists :: (Eq a) => [a] -> [a] -> [a]
union_lists [] [] = []
union_lists [] (y : ys) = y : union_lists [] ys
union_lists (x : xs) [] = x : union_lists xs []
union_lists (x : xs) (y : ys) = if x == y then x : union_lists xs ys else x : union_lists xs (y : ys)

-- program that returns the final element of a list using recursion
last_list :: [a] -> a
last_list [] = error "empty list"
last_list [x] = x
last_list (x : xs) = last_list xs

-- function that takes two lists of integers and returns a list containing tuples with corresponding elements from both the lists using recursion
generate_tuples :: [a] -> [b] -> [(a, b)] 
generate_tuples xs [] = []
generate_tuples [] ys = []
generate_tuples (x : xs) (y : ys) = [(x, y)] ++ generate_tuples [x] ys ++ generate_tuples xs [y] ++ generate_tuples xs ys

-- main function
main = do
  print "PL Assignment 5"
  print ("maximum of a list of numbers [2, 15, 7, 16, 8] :", max_list_numbers [2, 15, 7, 16, 8])
  print ("empty intersection of two lists [1,2,3] [4,5,6] :", intersection_empty [1,2,3] [4,5,6])
  print ("union of two lists [1,2,3] [4,5,6] :", union_lists [1,2,3] [4,5,6])
  print ("final element of a list [2, 15, 7, 16, 8] :", last_list [2, 15, 7, 16, 8])
  print ("tuples from two lists [1,2,3] [4,5,6] :", generate_tuples [1,2,3] [4,5,6])

-- GHCi, version 8.10.6: https://www.haskell.org/ghc/  :? for help
-- Loaded GHCi configuration from /home/runner/IntelligentArcticComputergames/.ghci
-- [1 of 1] Compiling Main             ( Main.hs, interpreted )
-- Ok, one module loaded.
-- > "PL Assignment 5"
-- ("maximum of a list of numbers [2, 15, 7, 16, 8] :",16)
-- ("empty intersection of two lists [1,2,3] [4,5,6] :",True)
-- ("union of two lists [1,2,3] [4,5,6] :",[1,2,3,4,5,6])
-- ("final element of a list [2, 15, 7, 16, 8] :",8)
-- ("tuples from two lists [1,2,3] [4,5,6] :",[(1,4),(1,5),(1,6),(2,4),(3,4),(2,5),(2,6),(3,5),(3,6)])
