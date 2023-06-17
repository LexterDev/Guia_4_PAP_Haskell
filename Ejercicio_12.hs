main :: IO ()
main = do
  putStrLn "Ingrese la cantidad de números a introducir:"
  input <- getLine
  let cantidadNumeros = read input :: Int
  numeros <- pedirNumeros cantidadNumeros
  let mayoresCero = length (filter (> 0) numeros)
  let menoresCero = length (filter (< 0) numeros)
  let igualesCero = length (filter (== 0) numeros)
  putStrLn ("Cantidad de números mayores que 0: " ++ show mayoresCero)
  putStrLn ("Cantidad de números menores que 0: " ++ show menoresCero)
  putStrLn ("Cantidad de números iguales a 0: " ++ show igualesCero)

pedirNumeros :: Int -> IO [Int]
pedirNumeros n
  | n <= 0 = return []
  | otherwise = do
    putStrLn "Ingrese un número:"
    input <- getLine
    let numero = read input :: Int
    restantes <- pedirNumeros (n - 1)
    return (numero : restantes)
