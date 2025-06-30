module Main where

import qualified Grammar as G

test :: G.PartOfSpeech
test = G.Noun G.Proper

main :: IO ()
main = print test
