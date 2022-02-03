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