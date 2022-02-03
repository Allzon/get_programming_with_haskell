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


