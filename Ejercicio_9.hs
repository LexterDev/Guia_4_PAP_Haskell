import Data.Char (digitToInt)

main :: IO ()
main = do
  putStrLn "Ingrese los números enteros positivos (ingrese un número negativo para terminar):"
  invertirNumeros

invertirNumeros :: IO ()
invertirNumeros = do
  input <- getLine
  let numero = read input :: Int
  if numero < 0
    then putStrLn "Programa terminado."
    else do
      let invertido = invertirNumero numero
      let cifras = contarCifras numero
      putStrLn ("Número invertido: " ++ show invertido)
      putStrLn ("Número de cifras: " ++ show cifras)
      invertirNumeros

invertirNumero :: Int -> Int
invertirNumero numero = read (reverse (show numero))

contarCifras :: Int -> Int
contarCifras = length . show
