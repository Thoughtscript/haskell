import System.IO

main :: IO ()
main = do 
    putStrLn "type a character!!!!!!!!!!!!!"
    c <- getChar 
    putStrLn "you done typed"
    putChar c