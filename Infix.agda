module Infix where

open import Enumerated using (Bool; true; false)

data BinTree' : Set where
  x : BinTree'
  _+_ : BinTree' → BinTree' → BinTree'
