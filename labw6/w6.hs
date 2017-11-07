import Data.Char
main = do
putStrLn "What is your name?"
name <- getLine
let bigName = map toUpper name
putStrLn $ "Hey " ++ bigName ++ ", how are you?!"
