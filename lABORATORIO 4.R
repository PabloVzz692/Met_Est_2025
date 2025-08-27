#Pruebas de t
# caso de muestras independientes
#MAGT
#27/08/2025

#Importar datos de indice de calidad 

calidad <- read.csv("Calidad_plantas.csv", header= T)

#Que lo registre como un control o un factor que son dos grupos nadamas.
calidad$Tratamiento<- as.factor(calidad$Tratamiento)

colores <-c("yellow", "red")
boxplot(calidad$IE ~ calidad$Tratamiento,
        col=colores,
        Xlab="Tratamientos",
        ylab="indice de calidad",
        ylim=c(0.4,1.2),
        main="Vivero Iturbide")


#Estadistica descriptivas
#tapply sirve para obtener un valor cuando contamos
#con varios grupos

tapply(Calidad$IE, Calidad$Tratamiento, mean)
tapply(Calidad$IE, Calidad$Tratamiento, var)


#Observar que la varianza del grupo fert es 3 veces 
#mas grande que el grupo control(Ctrl)


#revisar el comportamiento de los datos
library("ggplot2")

ggplot(Calidad, aes(x = IE, color = Tratamiento))+
  geom_density()








