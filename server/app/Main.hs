module Main where

import Lib
import qualified HelloWorld as HW

main :: IO ()
main = someFunc >> HW.main
