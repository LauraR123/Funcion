culture.med <- function(ml,R){ 
 
  Ms <- (4.33*ml)/1000
  Sac <- (30*ml)/1000
  Agar <- (5.5*ml)/1000
  Reg <- if(R=="2,4D"){(250*ml)/1000} 
  else{(500*ml)/1000}
  
c<- data.frame(
  Compuesto=c("Regulador","MS","Sacarosa","Agar-Agar"),
  Cantidad=c(Reg,Ms,Sac,Agar),
  Unidades=c("μL","gramos","gramos","gramos"))
             
print(c)
}

#ejemplos 

culture.med(150,"2,4D")

