type Name = String
type PhoneNumber = String
type Entry = (Name, PhoneNumber)
type PhoneBook = [Entry]

phoneBook = [("peter", "5555-4444"),("paul", "1234-5678"),("john", "9876-4321")]

--lookUp :: Name -> PhoneBook -> PhoneNumber
lookUp name [] = "not found"
lookUp name ((n,p):pb) = if name == n then p else lookUp name pb


data Tree a = Leaf a | Node (Tree a) (Tree a)

size :: Tree a -> Int
size (Leaf n) = 1
size (Node x z ) = size x + size z + 1

balanced :: Tree a-> Bool
balanced (Leaf _) = True
balanced (Node l r)=
  let diff = abs (size l - size r) in
  diff <= 1 && balanced l && balanced r
