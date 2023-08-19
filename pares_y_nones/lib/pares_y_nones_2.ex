IO.puts("****************************************************************************************")
IO.puts("*                   Bienvenid@ al juego de pares y nones versión 2                     *")
IO.puts("*                                Comencemos la batalla                                 *")
IO.puts("****************************************************************************************")

IO.puts("1......")
:timer.sleep(2000)
IO.puts("2......")
:timer.sleep(2000)
IO.puts("3......")
:timer.sleep(2000)


eleccion = IO.gets("Elige entre pares y nones: ") |> String.trim()

IO.puts("Vaya!!! has elegido #{eleccion}")
usuario = IO.gets("¿Cuál es tu número?(1 a 10) ") |> String.trim() |> String.to_integer()
computadora = Enum.random(1..10)

IO.puts("Mi número es #{computadora}")
suma = computadora + usuario

if usuario >= 1 and usuario <= 10 and (eleccion == "pares" or eleccion == "nones") do
  if (rem(suma, 2) == 0 and eleccion == "pares") or (rem(suma, 2) != 0 and eleccion == "nones") do
    IO.puts("¡Ganaste! La suma es #{suma}")
  else
    IO.puts("¡He ganado yo! La suma es #{suma}. ¡Inténtalo de nuevo!")
  end
else
  IO.puts("Ha ingresado un valor no válido.")
  IO.puts("Recuerda que solo tenemos 10 dedos en nuestras manos =D")
  IO.puts("Y solo puedes elegir entre pares y nones. ¡Inténtalo de nuevo!")
end