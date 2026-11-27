algoritmo alumnos_examenes

funcion real promedio(c1: real, c2: real, c3: real)
variables
  p : real
inicio
  p <- (c1 + c2 + c3) / 3
  retornar p
fin

funcion logico aprobado(p: real)
variables
  resultado : logico
inicio
  si p >= 7 entonces
    resultado <- TRUE
  sino
    resultado <- FALSE
  finsi
  retornar resultado
fin

variables
  nombres arreglo [4] : cadena
  califs arreglo [4,3] : real
  i, j, aprobados : entero
  prom : real

inicio
  aprobados <- 0

  para i <- 1 hasta 4 hacer
    imprimir "Nombre del alumno ", i, ": "
    leer nombres[i]
    para j <- 1 hasta 3 hacer
      imprimir "Examen ", j, " de ", nombres[i], ": "
      leer califs[i,j]
    finpara
  finpara

  para i <- 1 hasta 4 hacer
    prom <- promedio(califs[i,1], califs[i,2], califs[i,3])
    imprimir nombres[i], " ", prom, " "
    si aprobado(prom) entonces
      imprimirln "APROBADO"
      aprobados <- aprobados + 1
    sino
      imprimirln "REPROBADO"
    finsi
  finpara

  imprimirln "Aprobados: ", aprobados
fin
