
#Ejercicio 1: Efimeras y Velocidad
  speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
  abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)
  
#Diagramna de dispersion 
  plot(speed, abundance,
       main="Relacion entre velocidad y abundancia",
       xlab="Speed",
       ylab="Abundance",
       pch=19, col="maroon")
  
##Coeficiente de correlacion de pearson 
  cor.test(speed, abundance,
           method ="pearson" )
##“Existe una correlación positiva entre la velocidad de los arroyos y la abundancia
## de efímeras (Ecdyonurus dispar)”.
  
  
  
##EJERCICIO 2: Correlaciones del suelo
  
  # Datos 
  soil <- data.frame(
    Gp   = c("T0","T0","T0","T0","T1","T1","T1"),
    Block= 1:7,
    pH   = c(5.40,5.65,5.14,5.14,5.14,5.10,4.70),
    N    = c(0.188,0.165,0.260,0.169,0.164,0.094,0.100),
    Dens = c(0.92,1.04,0.95,1.10,1.12,1.22,1.52),
    P    = c(215,208,300,248,174,129,117),
    Ca   = c(16.35,12.25,13.02,11.92,14.17,8.55,8.74),
    Mg   = c(7.65,5.15,5.68,7.88,8.12,6.92,8.16),
    K    = c(0.72,0.71,0.68,1.09,0.70,0.81,0.39),
    Na   = c(1.14,0.94,0.60,1.01,2.17,2.67,3.32),
    Conduc = c(1.09,1.35,1.41,1.64,1.85,3.18,4.16)
  )
  
  # Matriz de correlación
  cor_matrix <- cor(soil[,3:11], method="pearson")
  
  # Test de significancia para cada par
  library(Hmisc)
  cor_results <- rcorr(as.matrix(soil[,3:11]))
  
  cor_matrix        # coeficientes r
  cor_results$P     # p-values
  
  # Correlograma
  library(corrplot)
  corrplot(cor_matrix, method="circle", type="upper",
           tl.cex=0.8, col=colorRampPalette(c("red","white","blue"))(200))
  
  
  ### ===============================
  ### Ejercicio 3: Cuarteto de Anscombe
  ### ===============================
  
  # Datos
  anscombe_data <- anscombe  # ya viene incluido en R
  
  # Resumen estadístico
  summary(anscombe_data)
  
   # Correlaciones
  cor(anscombe_data$x1, anscombe_data$y1)
  cor(anscombe_data$x2, anscombe_data$y2)
  cor(anscombe_data$x3, anscombe_data$y3)
  cor(anscombe_data$x4, anscombe_data$y4)
  
  # Gráficas

  # Gráficas
  par(mfrow=c(2,2))
  plot(anscombe_data$x1, anscombe_data$y1, 
       main="Conjunto I")
  abline(lm(y1 ~ x1, data=anscombe_data), col="blue")
  
  plot(anscombe_data$x2, anscombe_data$y2, main="Conjunto II")
  abline(lm(y2 ~ x2, data=anscombe_data), col="red")
  
  plot(anscombe_data$x3, anscombe_data$y3, main="Conjunto III")
  abline(lm(y3 ~ x3, data=anscombe_data), col="purple")
  
  plot(anscombe_data$x4, anscombe_data$y4, main="Conjunto IV")
  abline(lm(y4 ~ x4, data=anscombe_data), col="yellow")