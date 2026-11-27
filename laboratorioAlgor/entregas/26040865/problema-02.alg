algoritmo primos_arreglo

funcion logico esPrimo(n: entero)
variables
  i : entero
  bandera : logico
inicio
  bandera <- TRUE

  si n <= 1 entonces
    bandera <- FALSE
  finsi

  si n > 1 entonces
    i <- 2
    mientras i < n hacer
      si n MOD i = 0 entonces
        bandera <- FALSE
      finsi
      i <- i + 1
    finmientras
  finsi

  retornar bandera
fin

variables
  numeros arreglo [8] : entero
  i, total : entero

inicio
  total <- 0

  para i <- 1 hasta 8 hacer
    imprimir "Ingresa el entero ", i, ": "
    leer numeros[i]
  finpara

  imprimirln "Primos:"
  para i <- 1 hasta 8 hacer
    si esPrimo(numeros[i]) entonces
      imprimir numeros[i], " "
      total <- total + 1
    finsi
  finpara

  imprimirln
  imprimirln "Total: ", total
fin
