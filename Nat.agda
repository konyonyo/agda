module Nat where

data ℕ : Set where
  zero : ℕ
  succ : ℕ → ℕ

one = succ zero
two = succ one

data _==_ (n : ℕ) : ℕ → Set where
  refl : n == n

==trans: ∀ {l m n : ℕ} → l == m → m == n → l == n
==trans {l} {m} {n} p q = ?
