module Day1 where

-- テスト

data 𝔹 : Set where
  true : 𝔹
  false : 𝔹

neg : 𝔹 → 𝔹
neg true = false
neg false = true

