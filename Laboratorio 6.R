#Datos de produccion de semilla para los años 2012 y 2013
#Se expresa en kg semilla por arbol
#Importardatos

sem<- read.csv("sem.csv", header = T)
sem$Tiempo <-as.factor(sem$Tiempo)

sem

tapply(sem$Kgsem, sem$Tiempo, mean)

boxplot(sem$Kgsem ~ sem$Tiempo,
        col= "yellow",
        xlab= "Año",
        ylab = "Semilla (Kg)")


t2012 <-subset(sem, sem$Tiempo =="T2012")
t2013 <-subset(sem, sem$Tiempo !="T2013")

t.test(t2012$Kgsem, t2013$Kgsem, paired= T)


t.test(t2012$Kgsem, t2013$Kgsem, paired= T, alternative = "less")

