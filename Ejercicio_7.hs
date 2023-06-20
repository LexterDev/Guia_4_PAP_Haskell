main :: IO ()
main = do
  putStrLn "Ingrese la antigüedad laboral en años:"
  input <- getLine
  let antiguedad = read input :: Int
  let salario = 40  -- Salario diario promedio
  let aguinaldo = calcularAguinaldo antiguedad salario
  putStrLn ("El aguinaldo a pagar es: $" ++ show aguinaldo)

calcularAguinaldo :: Int -> Float -> Float
calcularAguinaldo antiguedad salario
  | antiguedad < 2 = 15 * salario
  | antiguedad >= 2 && antiguedad <= 5 = 19 * salario
  | antiguedad > 5 = 30 * salario
  | otherwise = error "Antigüedad inválida"
