main :: IO ()
main = do
  putStrLn "Ingrese el tipo de uva (A o B):"
  tipoUva <- getLine
  putStrLn "Ingrese el tamaño de uva (1 o 2):"
  tamanoUva <- getLine
  putStrLn "Ingrese el peso de la uva en kilogramos:"
  input <- getLine
  let pesoUva = read input :: Float
      precioInicial = 2.5  -- Precio inicial por kilo de uva
      ganancia = calcularGanancia tipoUva tamanoUva pesoUva precioInicial
  putStrLn ("Ganancia obtenida: $" ++ show ganancia)

calcularGanancia :: String -> String -> Float -> Float -> Float
calcularGanancia tipoUva tamanoUva pesoUva precioInicial
  | tipoUva == "A" && tamanoUva == "1" = (precioInicial + 0.2) * pesoUva
  | tipoUva == "A" && tamanoUva == "2" = (precioInicial + 0.3) * pesoUva
  | tipoUva == "B" && tamanoUva == "1" = (precioInicial - 0.3) * pesoUva
  | tipoUva == "B" && tamanoUva == "2" = (precioInicial - 0.5) * pesoUva
  | otherwise = 0.0
