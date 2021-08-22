module Mutual where

open import Enumerated using (Bool; true; false)
open import Data.Nat public using (ℕ; zero; suc)

data L : Set
data M : Set

data L where
  nil : L
  _::_ : ℕ → M → L

data M where
  _::_ : Bool → L → M
