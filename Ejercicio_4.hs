main :: IO ()
main = do
  putStrLn "Ingrese el primer número:"
  input1 <- getLine
  putStrLn "Ingrese el segundo número:"
  input2 <- getLine
  let num1 = read input1 :: Int
  let num2 = read input2 :: Int
  let resultado = if num1 >= num2 then num1 + num2 else num1 * num2
  putStrLn ("El resultado es: " ++ show resultado)
