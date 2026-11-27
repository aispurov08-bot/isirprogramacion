algoritmo ventas_sucursales

variables
  ventas arreglo [3,4] : entero
  totSuc arreglo [3] : entero
  totTrim arreglo [4] : entero
  i, j, mayor, sucMayor : entero

inicio
  para i <- 1 hasta 3 hacer
    totSuc[i] <- 0
  finpara

  para j <- 1 hasta 4 hacer
    totTrim[j] <- 0
  finpara

  para i <- 1 hasta 3 hacer
    para j <- 1 hasta 4 hacer
      imprimir "Sucursal ", i, " trimestre ", j, ": "
      leer ventas[i,j]
      totSuc[i] <- totSuc[i] + ventas[i,j]
      totTrim[j] <- totTrim[j] + ventas[i,j]
    finpara
  finpara

  mayor <- totSuc[1]
  sucMayor <- 1
  para i <- 2 hasta 3 hacer
    si totSuc[i] > mayor entonces
      mayor <- totSuc[i]
      sucMayor <- i
    finsi
  finpara

  imprimirln "Sucursales: ", totSuc[1], ", ", totSuc[2], ", ", totSuc[3]
  imprimirln "Trimestres: ", totTrim[1], ", ", totTrim[2], ", ", totTrim[3], ", ", totTrim[4]
  imprimirln "Sucursal con mas ventas: ", sucMayor
fin
