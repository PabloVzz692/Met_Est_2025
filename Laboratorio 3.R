#  Laboratorio semana 3
# 20/08/2025
# Pablo Vazquez Marin


# Importar datos ----------------------------------------------------------

Temperatura <- read.csv("Temperatura.csv", header= T)
Temperatura <-read.csv("Temperatura.csv", header=T)


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

url <- "https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades-inspeccion-movilizacion.csv"

inspeccion <- read.csv(url)
head(inspeccion)
senasica <- read.csv(prof_url_2)
head(senasica)

library(repmis) # No olvidar cargar la paquetería
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
## Downloading data from: https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1
## SHA-1 hash of the downloaded data file is:
## 2bdde4663f51aa4198b04a248715d0d93498e7ba

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(conjunto) # muestra las primeras seis filas de la BD
inventario <- read_csv(file)
head(inventario)


mean(trees$dbh) # El signo de $ informa que necesitamos la columna dbh
## [1] 15.64333
sd(trees$dbh)
## [1] 7.448892
