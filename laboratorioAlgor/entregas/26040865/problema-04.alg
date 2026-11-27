algoritmo diagonales_matriz

funcion entero mayor(a: entero, b: entero)
variables
  m : entero
inicio
  si a > b entonces
    m <- a
  sino
    m <- b
  finsi
  retornar m
fin

variables
  mat arreglo [3,3] : entero
  i, j, diagPrin, diagSec : entero

inicio
  diagPrin <- 0
  diagSec <- 0

  para i <- 1 hasta 3 hacer
    para j <- 1 hasta 3 hacer
      imprimir "Renglon ", i, " columna ", j, ": "
      leer mat[i,j]
    finpara
  finpara

  para i <- 1 hasta 3 hacer
    diagPrin <- diagPrin + mat[i,i]
    diagSec <- diagSec + mat[i, 4 - i]
  finpara

  imprimirln "Diagonal principal: ", diagPrin
  imprimirln "Diagonal secundaria: ", diagSec
  imprimirln "Mayor: ", mayor(diagPrin, diagSec)
fin
