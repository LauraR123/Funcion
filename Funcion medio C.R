culture.med <- function(ml,R){ 
  # Oct 2022
  #DESCRIPCION: Funcion para calcular las cantidades de los compuestos para
  #preparar un medio de cultivo con enfoque a estructuras vegetales
  
  #ARGUMENTOS: 
  #ml= mililitros de la solucion a preparar
  #R= regulador que se va a usar, ya sea BAP o 2,4D
  # CODIGO: 
  Ms <- (4.33*ml)/1000
  Sac <- (30*ml)/1000
  Agar <- (5.5*ml)/1000
  #
  #Se crea un condicional dependiendo del regulador de crecimiento que se usará
  #
  Reg <- if(R=="2,4D"){(250*ml)/1000} 
  else{(500*ml)/1000}
  #
  #Se crea un data.frame para mostrar el resultado de la funcion, de forma que quede claro
  #para el usuario las cantidades a usar de cada compuesto con sus respectivas unidades
  #
c<- data.frame(
  Compuesto=c("Regulador","MS","Sacarosa","Agar-Agar"),
  Cantidad=c(Reg,Ms,Sac,Agar),
  Unidades=c("μL","gramos","gramos","gramos"))
 
print(c)
}

# EJEMPLOS:
# culture.med(150,"2,4D")
#
#
# culture.med(150,"BAP")
