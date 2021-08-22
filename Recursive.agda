module Recursive where

open import Enumerated using (Bool; true; false)


data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

data ℕ⁺ : Set where
  one : ℕ⁺
  double : ℕ⁺ → ℕ⁺
  double+1 : ℕ⁺ → ℕ⁺

data ℕ₂ : Set where
  zero : ℕ₂
  id : ℕ⁺ → ℕ₂

data ℤ : Set where
  zero : ℤ
  suc : ℤ → ℤ
  pred : ℤ → ℤ



  
