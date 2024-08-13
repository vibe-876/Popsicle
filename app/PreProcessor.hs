{-
All that this is going to do for now is remove
comments from the program.

I might add more later...
-}
module PreProcessor where


pp :: String -> String
pp = remCom


remCom :: String -> String
remCom []       = []
remCom (';':cs) = (remCom . dropWhile (/='\n')) cs
remCom (c:cs)   = c : remCom cs
