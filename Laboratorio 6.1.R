#======================
# Correlacion de Pearson
# Datos del geyser Old Faithful
# 24/09/2025
#======================

data("faithful")
plot(faithful$waiting, faithful$eruptions,
     xlab = "Tiempo de espera(min)",
     ylab = "Erupción (min)",
     col = "red",
     pch = 20)


#Correlacionar las dos variables

cor.test(faithful$waiting, faithful$eruptions,
         method ="pearson" )

