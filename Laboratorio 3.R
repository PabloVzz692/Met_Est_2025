#  Laboratorio semana 3
# 20/08/2025
# Pablo Vazquez Marin


# Importar datos ----------------------------------------------------------

Temperatura <- read.csv("Temperatura.csv", header= T)
Temperatura <-read.csv("Nuevacarpeta/Temperatura.csv", header=T)


# Ingresar datos de manera manual -----------------------------------------

edad <-c(18, 19, 18, 18, 25, 19, 18, 18, 18, 17, 19, 19, 18, 17, 19, 18, 19, 19)
alumno <-seq(1,18,1)
info <- data.frame(alumno,edad)
info$altura<-c(174, 174, 170, 160, 158, 155, 188,
               170, 175, 170, 172, 170, 174, 180,
               158, 161, 188, 164)
# Graficar datos ----------------------------------------------------------

boxplot(info$altura,
        #col sirve para colorear la grafica
        col="red",
        #Main sirve para poner un titulo
        main= " Clase 3 semestre")
colores=c("orange","skyblue", "yellow")
boxplot(datos_meses,
        col = colores)

# Estadisticas descriptivas -----------------------------------------------





