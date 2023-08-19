IO.puts("****************************************************************************************")
IO.puts("*                       Bienvenid@ al juego de pares y nones                           *")
IO.puts("*                              Comencemos la batalla                                   *")
IO.puts("****************************************************************************************")

IO.puts("1......")
:timer.sleep(2000)
IO.puts("2......")
:timer.sleep(2000)
IO.puts("3......")
:timer.sleep(2000)
    usuario = IO.gets("¿Cuál es tu número?(1 a 10) ") |> String.trim() |> String.to_integer()
    computadora = Enum.random(1..10)

    IO.puts("Mi número es #{computadora}")
suma=0
    if usuario >= 1 and usuario <= 10 do
      suma= computadora + usuario
        if rem(suma, 2) == 0 do
          IO.puts("¡Ganaste! La suma es #{computadora + usuario}")
        else
          IO.puts("He ganado yo, La suma es #{computadora + usuario}. ¡Inténtalo de nuevo!")
         end
    else
      IO.puts("Ha ingresado un valor no valido, recuerda que solo tenemos 10 dedos en nuestras manos =D")
    end



