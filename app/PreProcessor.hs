{-
All that this is going to do for now is remove
comments from the program.

I might add more later...
-}
module PreProcessor where


preProcess :: String -> String
preProcess = removeComs


removeComs :: String -> String
removeComs []       = []
removeComs (';':cs) = (removeComs . dropWhile (/='\n')) cs
removeComs (c:cs)   = c : removeComs cs
