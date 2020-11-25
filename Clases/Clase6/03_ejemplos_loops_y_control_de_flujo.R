
# Loops y control de flujo ------------------------------------------------

# Control de flujo con if else 
x <- -2

if(x > 2){
  print("Si es mayor que 2")
}else{
  if(x > -5){
    x*10
  }else{
    print("No")  
  }
  
}



# Loops: while ------------------------------------------------------------

# imprimir "lala" 20 veces


cont <- 1
while(cont <= 20){
  #codigo a ejecutar  
  print(cont)
  print("lala")
  cont <- cont + 1
}



# Loops: for --------------------------------------------------------------

# un ciclo for, permite iterar a lo largo de un arreglo (vector, lista, columnas de una tabla, elementos de una matriz, etc)

v_num  <- 20:50

for( k in v_num){
  print(paste("esta es la iteración con k = ",k))
  print(k/8)
}

lista <- list(x= c(1,2,3), y = c("a","b","c","d"), z = c(T,T,F,T))

for(l in lista){
  print(l[1])
}

library(ggplot2)
data(mpg)

i <- 1
for(col in mpg){
  print(names(mpg)[i])
  print(summary(col))
  
  i <- i+1
}


# funciones de la familia apply ------------------------------------------

?sapply
?apply
?lapply

lista2 <- list(x = c(1,2,3), y = 1:100, z = c(T,T,F,T))

lapply(lista2, FUN = sum)


# funciones personalizadas ------------------------------------------------


suma_de_dos <- function(cosa){
  aux <- cosa[1] + cosa[3]
  return(aux)
}

suma_de_dos(c(10,30,50,1))
suma_de_dos(cosa = c(10,30,50,1))


## podemos aplicar nuestra función a los elementos de la lista2


lapply(lista2, FUN = suma_de_dos) # map, pmap: purrr




