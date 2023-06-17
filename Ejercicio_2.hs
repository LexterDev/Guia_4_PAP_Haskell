fibonacci :: Int -> [Int]
fibonacci n = take n fibSeq
  where
    fibSeq = 0 : 1 : zipWith (+) fibSeq (tail fibSeq)

main :: IO ()
main = do
  putStrLn "Ingrese la cantidad de términos de la serie Fibonacci que desea calcular:"
  input <- getLine
  let n = read input :: Int
  let fibTerms = fibonacci n
  putStrLn "Los primeros términos de la serie Fibonacci son:"
  mapM_ print fibTerms
