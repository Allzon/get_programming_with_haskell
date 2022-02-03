# Lesson 1
## Hello
First haskell codes, two hello world examples
one is a simple print, another has an input
```haskell
-- first hello world
hello1 :: IO ()
hello1 = do
  putStrLn "Hello, World!!"
  putStrLn "Good Lucky in Haskell!!"

-- second hello world with input
hello2 :: IO ()
hello2 = do
  putStrLn "Hello, World!!"
  putStrLn "What is your name? "
  x <- getLine 
  putStrLn ("Good Lucky in Haskell, " ++ x ++ "!!")

```

## first program
Here at messy man we have a not so well written email generator
```haskell
-- a messy first program
messyMain :: IO()
messyMain = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print ("Dear " ++ recipient ++ ",\n"
         ++ "Thanks for buying " 
         ++ title ++ "\nthanks,\n" 
         ++ author )
```
to improve this we can split the strings into functions for have better comprehension
```haskell

-- divide functions
toPart, bodyPart, fromPart :: [Char] -> [Char]
toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart title = "Thanks for buying " ++ title ++ "\nthanks,\n"
fromPart author = "thanks,\n" ++ author

-- function composition
createEmail :: [Char] -> [Char] -> [Char] -> [Char]
createEmail recipient title author = toPart recipient
                                  ++ bodyPart title
                                  ++ fromPart author

```
so the main looks like this
```haskell

-- a better first program
main :: IO()
main = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print (createEmail recipient title author)
```