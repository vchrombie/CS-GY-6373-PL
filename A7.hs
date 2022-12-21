getLength :: String -> Int
getLength [] = 0
getLength (x:xs) = 1 + getLength xs

getMaxString ::  [String] -> String
getMaxString [] = []
getMaxString (x:xs) = if getLength x > getLength (getMaxString xs) then x else getMaxString xs

insertEnd :: Char -> String -> String
insertEnd x [] = [x]
insertEnd x (y:ys) = y : insertEnd x ys

uniqueHelper ::  String -> String -> String
uniqueHelper [] ys = ys
uniqueHelper (x:xs) (ys) =  if elem x ys then ys else uniqueHelper xs (insertEnd x ys)

uniqueSubstringHelper :: String -> [String]
uniqueSubstringHelper [] = []
uniqueSubstringHelper [x] = [x] : []
uniqueSubstringHelper (x:xs) = uniqueHelper (x:xs) [] : uniqueSubstringHelper xs

uniqueSubstring :: String -> String
uniqueSubstring [] = []
uniqueSubstring [x] = [x]
uniqueSubstring (x:xs) = getMaxString (uniqueSubstringHelper (x:xs))

main = do
  print(uniqueSubstring "abaacb")

-- GHCi, version 8.10.6: https://www.haskell.org/ghc/  :? for help
-- Loaded GHCi configuration from /home/runner/UsefulEmptyAdministrators/.ghci
-- [1 of 1] Compiling Main             ( Main.hs, interpreted )
-- Ok, one module loaded.
-- > "acb"
-- > 
