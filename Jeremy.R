
library(dplyr) 
library(tidyr)
library(readxl)

datos = read.csv("CursosGeneral.csv",header = TRUE,sep = ",",na.strings = "" ) #CARGA EL ARCHIVO .csv
datos

# = datos[ , -c(4)] #SE ELIMINA LA COLUMNA AUTOR,NO SIRVE PARA EL ANALISIS
#datos_sinAutor

#filter(datos_sinAutor,    Calificacion > 4.0)


tabla=data.frame(datos$TituloCurso, datos$Calificacion,datos$Autor)
print(tabla)

#filter(tabla,    datos.Calificacion > 4.0)


python=dplyr::filter(tabla, grepl('Python', datos.TituloCurso,ignore.case=TRUE))

print(python)

pythonOrdenado<- python[order(python$datos.Calificacion,decreasing=TRUE),]

print(pythonOrdenado)


java=python=dplyr::filter(tabla, grepl('Java', datos.TituloCurso,ignore.case=TRUE))
print(java)


javaOrdenado<- java[order(python$datos.Calificacion,decreasing=TRUE),]
print(javaOrdenado)




javascript=dplyr::filter(tabla, grepl('Javascript', datos.TituloCurso,ignore.case=TRUE))
print(javascript)


