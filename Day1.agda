module Day1 where

-- テスト

data 𝔹 : Set where
  true : 𝔹
  false : 𝔹

neg : 𝔹 → 𝔹
neg true = false
neg false = true

neg-of-true : 𝔹
neg-of-true = neg true

open import Relation.Binary.PropositionalEquality

neg-of-true-is-false : neg true ≡ false
neg-of-true-is-false = refl



