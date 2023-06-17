main :: IO ()
main = do
  putStrLn "Los primeros 10 números enteros positivos son:"
  mapM_ print [1..10]
