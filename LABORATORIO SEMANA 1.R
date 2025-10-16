# Gastos mensuales
300 + 240 + 1527+ 400 +1500 + 1833
celular <- 300
Transporte <- 240
Comestibles <- 1527
Gimnasio <- 400
Alquiler <- 1500
otros <- 1833
total <- celular+Transporte+Comestibles+Gimnasio+Alquiler+otros
semestre <- total*5
anual <- total*10

#valor absoluto 
abs(10)
abs(-4)

#Raiz cuadrada
sqrt(9)

#logaritmo naTURAl
log(2)

2*9
4+5 # tambien se puede colocar un comemntario 
celular<-300
Celular<--300
CELULAR<- 8000

celular+Celular
CELULAR-celular

help(abs)
help(mean)
?abs
?mean

# buscar absolute
help.search("absolute")
gastos <-c(celular, Transporte, Comestibles, Gimnasio, Alquiler, otros)
gastos

barplot(gastos)
?sort
gastos_ord <-sort(gastos, decreasing = TRUE)
barplot(gastos_ord)


help("barplot")
barplot(gastos_ord, main = "Gastos mensuales",
        col="red",
        names.arg=c( "otros", "Alquiler", "Gimnasio", "Comestibles", "Transporte", "celular" ))


