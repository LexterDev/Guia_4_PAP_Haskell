main :: IO ()
main = do
  putStrLn "Ingrese el monto a ahorrar al final de cada mes:"
  input <- getLine
  let montoDeposito = read input :: Float
  ahorroAnual <- calcularAhorroAnual montoDeposito 12
  mostrarAhorroMensual ahorroAnual

calcularAhorroAnual :: Float -> Int -> IO Float
calcularAhorroAnual montoDeposito meses
  | meses <= 0 = return 0
  | otherwise = do
    putStrLn "Ingrese el ahorro del mes:"
    input <- getLine
    let ahorroMes = read input :: Float
    ahorroRestante <- calcularAhorroAnual montoDeposito (meses - 1)
    let ahorroTotal = ahorroRestante + ahorroMes
    return (ahorroTotal + montoDeposito)

mostrarAhorroMensual :: Float -> IO ()
mostrarAhorroMensual ahorroAnual = do
  let ahorroMensual = ahorroAnual / 12
  putStrLn "Ahorro acumulado de cada mes:"
  mostrarMeses ahorroMensual 1

mostrarMeses :: Float -> Int -> IO ()
mostrarMeses ahorroMensual mes
  | mes > 12 = return ()
  | otherwise = do
    let ahorroAcumulado = ahorroMensual * fromIntegral mes
    putStrLn ("Mes " ++ show mes ++ ": $" ++ show ahorroAcumulado)
    mostrarMeses ahorroMensual (mes + 1)
