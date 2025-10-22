
# Examen Parcial II - Métodos Estadísticos
# Fecha: 22/10/2025
#Pablo Vazquez Marin 

# Importar datos
suelo <- read.csv("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")

# Ajustar tipos de variables 
suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)

#Actividad 1
summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)

#La tendencia del promedio contenido de arcilla es:
#P1: (31.27, 36.75,  44.68)

#Actividad 2
boxplot(suelo$Clay1,
        main = "Boxplot de Arcilla Clay1",
        ylab = "Contenido de Arcilla (%)",
        col = "yellow")
#P2: si hay outliers fuera

outliers <- boxplot.stats(suelo$Clay1)$out
outliers

#P3 : los outliers de los datos son los numeros 72,71 y 67

#Actividad 3 
#Determinar la media de la variable
media_obs <- mean(suelo$Clay1, na.rm = TRUE)
media_obs


#P4: Prueba t significativa con 30%
t.test(suelo$Clay1, mu = 30, alternative = "two.sided")

#Actividad 4
# Calcular correlación
cor.test(suelo$Clay1, suelo$Clay5, method = "pearson")
#P5 Y P7: Existe una relacion positiva y significativa 

#Actividad 5
boxplot(Clay5 ~ zone, data = suelo,
        main = "Variación del contenido de arcilla",
        xlab = "Zona",
        ylab = "Arcilla",
        col = c("red", "blue", "pink", "green"))
#P6: la forma para identificar la variacion de las cuatro zonas es con un grafico de BOXPLOT

