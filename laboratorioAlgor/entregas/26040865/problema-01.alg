algoritmo temperaturas_semana

variables
  temp arreglo [7] : real
  i, contador : entero
  suma, promedio : real

inicio
  suma <- 0
  contador <- 0

  para i <- 1 hasta 7 hacer
    imprimir "Temperatura del dia ", i, ": "
    leer temp[i]
    suma <- suma + temp[i]
  finpara

  promedio <- suma / 7

  para i <- 1 hasta 7 hacer
    si temp[i] > promedio entonces
      contador <- contador + 1
    finsi
  finpara

  imprimirln "Promedio: ", promedio
  imprimirln "Dias por encima del promedio: ", contador
fin
