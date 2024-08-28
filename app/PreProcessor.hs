module PreProcessor where


preProcess :: String -> String
preProcess = removeComs

removeComs :: String -> String
removeComs []       = []
removeComs (';':cs) = (removeComs . dropWhile (/='\n')) cs
removeComs (c:cs)   = c : removeComs cs
