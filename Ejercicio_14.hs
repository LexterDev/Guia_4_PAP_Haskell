main :: IO ()
main = do
  putStrLn "Ingrese las horas trabajadas por día durante la semana:"
  horasTrabajadas <- obtenerHorasTrabajadasSemana 1 []
  let totalHoras = sum horasTrabajadas
      sueldo = calcularSueldo totalHoras
  putStrLn ("Total de horas trabajadas: " ++ show totalHoras)
  putStrLn ("Sueldo a recibir: $" ++ show sueldo)

obtenerHorasTrabajadasSemana :: Int -> [Int] -> IO [Int]
obtenerHorasTrabajadasSemana dia horasTrabajadas
  | dia > 6 = return horasTrabajadas
  | otherwise = do
    putStrLn ("Ingrese las horas trabajadas del día " ++ show dia ++ ":")
    input <- getLine
    let horas = read input :: Int
    obtenerHorasTrabajadasSemana (dia + 1) (horas : horasTrabajadas)

calcularSueldo :: Int -> Float
calcularSueldo horasTrabajadas = fromIntegral horasTrabajadas * tarifaHora

tarifaHora :: Float
tarifaHora = 10.0  -- Tarifa por hora de trabajo
