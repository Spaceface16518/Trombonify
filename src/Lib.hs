module Lib
    ( encode,
    decode,
    process,
    getMeat,
    UserChoice(Encode, Decode),
    getChoice,
    ) where

import           Data.List
import           Data.List.Split

encode :: String -> String
encode = intercalate " " . map match


match :: Char -> String
match m
    | m == ' ' = "woop"
    | m == 'a' = "woo"
    | m == 'b' = "hoo"
    | m == 'c' = "hoot"
    | m == 'd' = "w"
    | m == 'e' = "oo"
    | m == 'f' = "who"
    | m == 'g' = "wu"
    | m == 'h' = "wah"
    | m == 'i' = "what"
    | m == 'j' = "wapp"
    | m == 'k' = "whapp"
    | m == 'l' = "whopp"
    | m == 'i' = "waa"
    | m == 'm' = "wwop"
    | m == 'n' = "whap"
    | m == 'o' = "woh"
    | m == 'p' = "wa"
    | m == 'q' = "whh"
    | m == 'r' = "waaa"
    | m == 's' = "waaaa"
    | m == 't' = "waaaaa"
    | m == 'u' = "whhhhh"
    | m == 'v' = "waaaaaa"
    | m == 'w' = "whhh"
    | m == 'x' = "wahhh"
    | m == 'y' = "waahh"
    | m == 'z' = "waaah"
    | otherwise = [m]

unmatch :: String -> [Char]
unmatch m
    | m == "woop" = [' ']
    | m == "woo" = ['a']
    | m == "hoo" = ['b']
    | m == "hoot" = ['c']
    | m == "w" = ['d']
    | m == "oo" = ['e']
    | m == "who" = ['f']
    | m == "wu" = ['g']
    | m == "wah" = ['h']
    | m == "what" = ['i']
    | m == "wapp" = ['j']
    | m == "whapp" = ['k']
    | m == "whopp" = ['l']
    | m == "waa" = ['i']
    | m == "wwop" = ['m']
    | m == "whap" = ['n']
    | m == "woh" = ['o']
    | m == "wa" = ['p']
    | m == "whh" = ['q']
    | m == "waaa" = ['r']
    | m == "waaaa" = ['s']
    | m == "waaaaa" = ['t']
    | m == "whhhhh" = ['u']
    | m == "waaaaaa" = ['v']
    | m == "whhh" = ['w']
    | m == "wahhh" = ['x']
    | m == "waahh" = ['y']
    | m == "waaah" = ['z']
    | otherwise = m

decode :: String -> String
decode = concat . map unmatch . splitOn " "

data UserChoice = Encode | Decode deriving (Eq)

process :: UserChoice -> String -> String
process choice
    | choice == Encode =  encode
    | choice == Decode = decode

getMeat :: [String] -> String
getMeat = intercalate " " . removeFirst

getChoice :: [String] -> UserChoice
getChoice (x:_)
    | x == "encode" = Encode
    | x == "decode" = Decode
    | otherwise = error ("invalid subcommand; try using `encode` or `decode`" ++ x)

removeFirst :: [a] -> [a]
removeFirst (_:xs) = xs
