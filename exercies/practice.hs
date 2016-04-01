module Practice where

word = "causes"

main :: IO ()
main = do
  words <- readFile "words.txt"
  putStrLn words

mysubtract :: Int -> String -> String
mysubtract i str = front ++ back
  where
    front = take i str
    back = drop (i+1) str


