main :: IO ()
main = do
  putStrLn "Ingrese la longitud del lado A:"
  inputA <- getLine
  let a = read inputA :: Float
  putStrLn "Ingrese la longitud del lado B:"
  inputB <- getLine
  let b = read inputB :: Float
  putStrLn "Ingrese la longitud del lado C:"
  inputC <- getLine
  let c = read inputC :: Float

  let tipoTriangulo = determinarTipoTriangulo a b c
  putStrLn ("El triángulo es de tipo: " ++ tipoTriangulo)

determinarTipoTriangulo :: Float -> Float -> Float -> String
determinarTipoTriangulo a b c
  | a == b && b == c = "Equilátero"
  | a == b || b == c || a == c = "Isósceles"
  | a^2 + b^2 == c^2 || b^2 + c^2 == a^2 || a^2 + c^2 == b^2 = "Rectángulo"
  | otherwise = "Escaleno"
