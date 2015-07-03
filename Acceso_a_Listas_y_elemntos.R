#Como acceder a elementos de una lista
library(readxl)
data <- read_excel("data_rls_uti.xlsx",sheet=1,na="")
str(data)

reg<-lm(data)
reg
str(reg)
names(reg)
#para acceder a los residuos, y a los coeficiente
reg["residuals"]
reg["coefficients"]
#para aceder al elmento 1 de residuos y el 2 de coeficientes
reg$residuals[1]
reg$coefficients[2]

summary(reg)
str(summary(reg))
names(summary(reg))
#para extraer una lista(la de coefficients) dentro de la lista "reg"
summary(reg)["coefficients"]
#para acceder a elementos de una lista(doble corchete), en este caso es un data frame
summary(reg)[["coefficients"]]
#para ingresar a una posicion de la data frame(que tiene dos dimensiones [i,j])
summary(reg)[["coefficients"]][1,2]



