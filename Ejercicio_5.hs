main :: IO ()
main = do
  putStrLn "Ingrese el primer número:"
  input1 <- getLine
  putStrLn "Ingrese el segundo número:"
  input2 <- getLine
  let num1 = read input1 :: Float
  let num2 = read input2 :: Float

  putStrLn "Seleccione la operación deseada:"
  putStrLn "1. Suma"
  putStrLn "2. Resta"
  putStrLn "3. Multiplicación"
  putStrLn "4. División"
  inputOp <- getLine
  let opcion = read inputOp :: Int

  let resultado = case opcion of
                    1 -> num1 + num2
                    2 -> num1 - num2
                    3 -> num1 * num2
                    4 -> num1 / num2
                    _ -> error "Opción inválida"

  putStrLn ("El resultado es: " ++ show resultado)