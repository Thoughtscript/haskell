# Basics

For [GHCi](https://downloads.haskell.org/~ghc/7.8.4/docs/html/users_guide/interactive-evaluation.html)

## Functions

Define a function using `let` keyword on one line:

```Haskell
let customAdd x y =  x + y
customAdd 2 5
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

## IO

Consider `<-`. Imported in the `IO` library. I believe this must be used within `GHC` since the library/module `IO` isn't available in `GHCi` (or some combination of the two and not just `GHCi` alone).

## Monadic Binding

Consider `>>=` and `>>`:

1. Combines two monadic values `a` and `b` into a single monadic value `b`.
2. `>>=` requires the type of `a` while `>>` doesn't.

```Haskell

```

## Instance Contexts

Consider `=>`:

```

```