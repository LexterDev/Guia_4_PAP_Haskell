import Text.Printf (printf)

main :: IO ()
main = do
  putStrLn "Ingrese el valor del radio (r):"
  input <- getLine
  let radio = read input :: Float
  let area = pi * radio^2
  putStrLn ("El área del círculo es: " ++ printf "%.2f" area)
