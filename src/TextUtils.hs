module TextUtils where

import Data.Char (toUpper)

shout :: String -> String
shout = map toUpper
