main :: IO ()
main = do
  putStrLn "Ingrese el monto total de la compra:"
  input <- getLine
  let montoCompra = read input :: Float
  putStrLn "Ingrese el tipo de membresía (A, B o C):"
  membresia <- getLine
  let descuento = obtenerDescuento membresia
      montoFinal = calcularMontoFinal montoCompra descuento
  putStrLn ("Descuento aplicado: " ++ show (descuento * 100) ++ "%")
  putStrLn ("Monto total de la compra: $" ++ show montoFinal)

obtenerDescuento :: String -> Float
obtenerDescuento membresia
  | membresia == "A" = 0.1
  | membresia == "B" = 0.15
  | membresia == "C" = 0.2
  | otherwise = 0.0

calcularMontoFinal :: Float -> Float -> Float
calcularMontoFinal montoCompra descuento = montoCompra - (montoCompra * descuento)
