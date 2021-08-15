module First where

data Answer : Set where
  yes : Answer
  no : Answer
  maybe : Answer

data Quarter : Set where
  east : Quarter
  west : Quarter
  north : Quarter
  south : Quarter

data ⊥ : Set where -- There is no constructor

data T : Set where
  tt : T
