module Constants where

open import Enumerated using (Bool; true; false)
open import Recursive using (ℕ; zero; suc)

nine : ℕ
nine = suc (suc (suc (suc (suc (suc (suc (suc (suc zero))))))))

ten : ℕ
ten = suc nine
