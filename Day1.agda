module Day1 where

-- ใในใ

data ๐น : Set where
  true : ๐น
  false : ๐น

neg : ๐น โ ๐น
neg true = false
neg false = true

neg-of-true : ๐น
neg-of-true = neg true

open import Relation.Binary.PropositionalEquality

neg-of-true-is-false : neg true โก false
neg-of-true-is-false = refl



