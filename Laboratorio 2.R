`temperatura.(2)` <- read.csv("C:/Repositorios- Pablovzz/Met_Est_2025/temperatura (2).csv")
 View(`temperatura.(2)`)
 
 head(`temperatura.(2)`)#primeras 6 filas
 dim(`temperatura.(2)`)#numero de filas y columnas
 names(`temperatura.(2)`)#nombresn de las columnas
 str(`temperatura.(2)`)#estructura del objeto

 #Resumen estadistico
 summary(`temperatura.(2)`)

 #Modificar nombre de columnas
 names(`temperatura.(2)`) <- c("anio","Ene","Feb", "Mar", "Abr", "May",
                               "Jun","Jul", "Ago", "Sep", "Oct","Nov", "Dic")

 names(`temperatura.(2)`)
 
 #crear columna Media anualcon temperatura Media anual
 `temperatura.(2)`$Ene
 `temperatura.(2)`$Media_anual <-rowMeans(`temperatura.(2)`[,2:13])
 head(`temperatura.(2)`)
 
 #crear objeto con medias mensuales de temperatura
 medias_mensuales <- colMeans(`temperatura.(2)`[,2:13])
 medias_mensuales
help("boxplot")

 boxplot(`temperatura.(2)`$Ene,
         main="Temperatura de enero",
         ylab="°C",
         col="orange")

 
 datos_meses <-`temperatura.(2)`[,2:13]
 boxplot(datos_meses,
         main="Temperatura de enero",
         ylab="°C",
         col="orange",
         names= c("Ene","Feb", "Mar", "Abr", "May",
                  "Jun","Jul", "Ago", "Sep", "Oct","Nov", "Dic"))

 