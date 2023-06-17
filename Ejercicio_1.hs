main::IO()

esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

main = do
  putStrLn "Ingrese un número:"
  input <- getLine
  let numero = read input :: Int
  if esPar numero
    then putStrLn "El número es par."
    else putStrLn "El número es impar."