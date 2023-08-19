IO.puts("****************************************************************************************")
IO.puts("*                       Bienvenid@ al juego de pares y nones                           *")
IO.puts("*                              Comencemos la batalla                                   *")
IO.puts("****************************************************************************************")

    eleccion= IO.gets("Elige entre pares y nones: ") |> String.trim()
    IO.puts("Vaya!!! has elegido #{eleccion}")

 IO.puts("1......")
 :timer.sleep(2000)
 IO.puts("2......")
 :timer.sleep(2000)
 IO.puts("3......")
 :timer.sleep(2000)

    usuario = IO.gets("¿Cuál es tu número?(1 a 5) ") |> String.trim() |> String.to_integer()
    computadora = Enum.random(1..5)

    IO.puts("Mi número es #{computadora}")

    if usuario >= 1 and usuario <= 5 and (eleccion == "pares" || eleccion == "nones") do
      suma= computadora + usuario
      cond do
         rem(suma, 2) == 0 and eleccion == "pares" ->
          IO.puts("¡Ganaste! La suma es #{computadora + usuario}")
         rem(suma, 2)!= 0 and eleccion == "pares"->
          IO.puts("He ganado yo, La suma es #{computadora + usuario}. ¡Inténtalo de nuevo!")
         rem(suma, 2) == 0 and eleccion == "nones" ->
          IO.puts("¡Perdiste! La suma es #{computadora + usuario}. ¡Inténtalo de nuevo!")
         rem(suma, 2) != 0 and eleccion == "nones" ->
          IO.puts("¡Ganaste! La suma es #{computadora + usuario} " )
      end
    else
      IO.puts("Ha ingresado un valor no valido\nrecuerda que solo tenemos 5 dedos en cada mano =D")
      IO.puts("Y solo puedes elegir entre pares y nones. ¡Intentalo de nuevo!")
    end



