programa Ejercicio1
procesos
  proceso juntarFlores(ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores +1
  fin
  proceso depositarFlores(E flores:numero)
  comenzar
    repetir flores
      depositarFlor
  fin
  proceso recorrerAvenida
  variables
    flores, esquinas :numero
  comenzar
    flores:=0
    esquinas:=0
    repetir 99
      si ~(HayFlorEnLaEsquina)
        esquinas:=esquinas+1
      sino
        juntarFlores(flores)
      mover
    si ~(HayFlorEnLaEsquina)
      esquinas:=esquinas +1
    sino
      juntarFlores(flores)
    depositarFlores(flores)
    Informar(flores)
    Informar(esquinas)
  fin
areas
  ciudad:AreaC(1,1,100,100)
robots
  robot tipo1
  variables
    flores,esquinas:numero
  comenzar
    recorrerAvenida
  fin
variables
  robot1, robot2, robot3:tipo1
comenzar
  AsignarArea(robot1,ciudad)
  AsignarArea(robot2,ciudad)
  AsignarArea(robot3,ciudad)
  Iniciar(robot1,1,1)
  Iniciar(robot2,3,1)
  Iniciar(robot3,5,1)
fin