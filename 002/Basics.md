# Basics

For [GHCi](https://downloads.haskell.org/~ghc/7.8.4/docs/html/users_guide/interactive-evaluation.html)

## Functions

Define a function using `let` keyword on one line:

```Haskell
let customAdd x y =  x + y
customAdd 2 5
```

```Haskell
let abs x = if x < 0 then -x else x
abs 5
```

Multiline, full definition in `GHCi`:

```Haskell
:{
customAdd :: Integer -> Integer -> Integer
customAdd x y =  x + y
:}
customAdd 2 5
```

> **Note:** that the `=` is equivalent to *lambda calc's variable binding* not value setting.

> `Infix functions` can be defined in the same way.

## IO

Consider `<-`. Imported in the `IO` library. I believe this must be used within `GHC` since the library/module `IO` isn't available in `GHCi` (or some combination of the two and not just `GHCi` alone).

## Then and Sequencing Operator

Consider `>>=` and `>>`:

1. `>>` is the (imperative) `Then` or `Sequencing` operator combining two sequential actions into one command (akin to the `&&` bash operator).
2. `>>=` passes the value and `>>` doesn't.

```Haskell
putStrLn "a" >> putStrLn "b"
```

## Lambda operator

Consider `\`. The following are two ways to express the same operation:

```Haskell
let test x = x+1
let test = \x -> x+1
```

## It

Consider `it`. It references the last result (is bound to the last result/value).

```Haskell
1+14 -- 15
it -- 15
```

## Type Disambiguation in Contexts

Consider `=>`. Due to the way that types and type definitions exist or are defined within Haskell, multiple types that are somewhat similar can be accidently interchanged. This can occur because of context (say `GHCi` opens a file with multiple customized imports that overload each other) or because of using certain type hierarchies. For example in the occasion of `Num a, Ord a`. Both `Num` and `Ord` have distinct operations and so enforcing something like: 

```Haskell
(Num a, Ord a) => a -> (t -> t) -> t -> t
```

Means that `a` must be of both types not just one (which `->` would permit in this case).

So, the `=>` operator is used to specify the exact types allowed as an alternative way to define a function's signature:

```Haskell
:{
addMeA :: Num Int => Int -> Int -> Int
addMeA x y = x + y
addMeB :: Num a => a -> a -> a
addMeB x y = x + y
addMeC' :: Num a => a -> a -> a
addMeC' x y = x + y
addMeD :: Int -> Int -> Int
addMeD x y = x + y
:}
```
```Haskell
addMeA 1 2 -- 3
addMeB 1 2 -- 3
addMeC' 1 2 -- 3
addMeD 1 2 -- 3
```

Great explaination from: https://stackoverflow.com/questions/56761514/difference-between-and-symbols-what-do-they-mean