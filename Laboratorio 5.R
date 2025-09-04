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
# Instala si no lo tienes
# install.packages("effsize")

library(effsize)

data_sub <- subset(iris, Species %in% c("versicolor", "virginica"))

# Cohen's d clásico (SD agrupada)
cohen.d(Petal.Length ~ Species, data = data_sub, hedges.correction = FALSE)

# Hedges' g (Cohen's d con corrección por muestra pequeña)
cohen.d(Petal.Length ~ Species, data = data_sub, hedges.correction = TRUE)


boxplot(Petal.Length ~ Species,
        data = data_sub,
        col= c("lightblue",
               "lightgreen"),
        main="Comparacion de Petal.Length",
        ylab= "Petal.Length")

library(ggplot2)
ggplot(data_sub, aes(x = Species, y = Petal.Length)) +
  geom_violin() +
  ggtitle("Comparación de la Longitud del Pétalo entre Especies") +
  xlab("Especie") +
  ylab("Longitud del Pétalo (cm)")

