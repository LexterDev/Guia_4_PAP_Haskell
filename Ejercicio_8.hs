main :: IO ()
main = do
  putStrLn "Ingrese la cantidad de horas trabajadas en la semana:"
  input <- getLine
  let horasTrabajadas = read input :: Int
  let salarioHora = 20 -- Salario por hora
  let horasNormales = min horasTrabajadas 40
  let horasExtras = max (horasTrabajadas - 40) 0
  let salarioSemana = calcularSalario horasNormales horasExtras salarioHora
  putStrLn ("El salario semanal es: $" ++ show salarioSemana)

calcularSalario :: Int -> Int -> Float -> Float
calcularSalario horasNormales horasExtras salarioHora =
  (fromIntegral horasNormales * salarioHora) + (fromIntegral horasExtras * (salarioHora + 5))
