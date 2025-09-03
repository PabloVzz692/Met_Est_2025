data_sub <- subset(iris, Species %in% c("versicolor", "virginica"))
head(data_sub) #Muestra las primeras 6 filas 
summary(data_sub) #Muestra la estructura de los datos

#Estadistica descriptiva 

tapply(data_sub$Petal.Length,data_sub$Species, var)

# ¿hay alguna diferencia significativa en el largo del petalo entre versicolor y virginica?

##revisar homogeneidad de varianzas 
var.test(Petal.Length ~ Species,
         data = data_sub)

#hacer una prueba de t de dos muestras independientes 
# dos colas= two.sided
t.test <-t.test(Petal.Length ~ Species, data=data_sub,
       var.equal = FALSE)#Welch
t.test

#Calcular e interpretar el tamaño del efecto (Cohen’s d).
# ejecutar solo la primera vez
library(effsize)
cohen.d(Petal.Length ~ Species, data = data_sub)


boxplot(Petal.Length ~ Species,
        data = data_sub,
        col= c("lightblue",
               "lightgreen"),
               main="Comparacion de Petal.Length",
        ylab= "Petal.Length")
    
    
        