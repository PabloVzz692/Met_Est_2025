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
        xlab="Tratamientos",
        ylab="indice de calidad",
        ylim=c(0.4,1.2),
        main="Vivero Iturbide")


#Estadistica descriptivas
#tapply sirve para obtener un valor cuando contamos
#con varios grupos

#para sacar la media y variacion estandar.
tapply(calidad$IE, calidad$Tratamiento, mean)
tapply(calidad$IE, calidad$Tratamiento, var)


#Observar que la varianza del grupo fert es 3 veces 
#mas grande que el grupo control(Ctrl)


#revisar el comportamiento de los datos
library("ggplot2")

ggplot(calidad, aes(x = IE, color = Tratamiento))+
  geom_density()

#Para sacar la varianza
tapply(calidad$IE, calidad$Tratamiento, sd)


#Separar los datos por tratamiento 

df_Ctrl <-subset(calidad, Tratamiento == "Ctrl")
df_fert <-subset(calidad, Tratamiento == "Fert")

#ggnorm revisar normalidad

par(mfrow = c(1,2))
qqnorm(df_Ctrl$IE); qqline(df_Ctrl$IE)
qqnorm(df_fert$IE); qqline(df_fert$IE)
par(mfrow = c(1,1))

#Normalidad de los datos
shapiro.test(df_Ctrl$IE)
shapiro.test(df_fert$IE)


#revisar homogeneidad de varianzas
var.test(df_Ctrl$IE, df_fert$IE)
var.test(calidad$IE ~ calidad$Tratamiento)


#Aplicar la prueba de t, varianzas iguales 
# dos colas= two.sided

t.test(calidad$IE ~ calidad$Tratamiento,
       var.equal = T,
       alternative = "two.sided")

#Medir el efecto

cohens_efecto <- function(x,y) {
  n1 <- length(x); n2 <- length(y)
  s1 <- sd(x);  s2 <- sd(y)
  sp <- sqrt(((n1-1) * s1^2 + (n2-1) * s2^2)/ (n1+ n2-2))
  (mean(x) - mean(y)) /sp
}
dcal <- cohens_efecto(df_Ctrl$IE, df_fert$IE)


