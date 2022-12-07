# 001

```Haskell
ghc Basics.hs
runhaskell Basics.hs
```

The examples on: http://learnyouahaskell.com/input-and-output seem incorrect partially?

```Haskell
main = do  
    foo <- putStrLn "Hello, what's your name?"  
    name <- getLine  
    putStrLn ("Hey " ++ name ++ ", you rock!")  
```

Prints out of order when using `ghc` and `runhaskell`:
```Haskell
d
Hello, what's your name?
Hey d, you rock!
```

Thanks to: https://stackoverflow.com/questions/44055971/why-does-a-haskell-script-using-putstrln-hang. Looks like one can use: 

```Haskell
ghci Basics.hs
ghci> main
```

To generate the correct output sequence. Stack Overflow answers suggests its a terminal buffer issue (or something related to how the terminal handles outputs)?