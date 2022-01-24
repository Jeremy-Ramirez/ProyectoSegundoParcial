
library(dplyr) 
library(tidyr)
library(readxl)


datos = read.csv("CursosGeneral.csv",header = TRUE,sep = ",",na.strings = "",encoding = "UTF-8" ) #CARGA EL ARCHIVO .csv
datos


tabla=data.frame(datos$TituloCurso, datos$Calificacion,datos$Autor)
print(tabla)

#-------PYTHON-------

python=dplyr::filter(datos, grepl('(.*python.*)', TituloCurso, ignore.case = TRUE)) #18
python

tablapython=data.frame(python$TituloCurso, python$Calificacion)
tablapython

tablaOrdenada=tablapython[order(tablapython$python.Calificacion, decreasing = TRUE),]
head(tablaOrdenada)
tail(tablaOrdenada)

tablapython1=as.numeric(tablapython$python.Calificacion)

tablapython1
library(agricolae) 
k1=nclass.Sturges(tablapython1)
k1=as.numeric(k1)
k1
x1=range(as.numeric(tablapython$python.Calificacion))
x1
inicio1=as.numeric(x[1])
inicio1
final1=as.numeric(x[2])
final1
amplitud1=(final1-inicio1)/5
amplitud1

hist(tablapython1, breaks = seq(from=inicio1, to=final1, by=amplitud1), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaPYTHONR=table.freq(hist(tablapython1, breaks = seq(from=inicio1, to=final1, by=amplitud1), include.lowest = T, right = F,plot = T)
)
tablaPYTHONR


#-------JAVA-------

java=dplyr::filter(datos, grepl('(JAVA | Java )', TituloCurso, ignore.case = TRUE)) #18
print(java)
tablajava=data.frame(java$TituloCurso, java$Calificacion)


tablaOrdenadaJ=tablajava[order(tablajava$java.Calificacion, decreasing = TRUE),]
head(tablaOrdenadaJ)
tail(tablaOrdenadaJ)



tablajava1=as.numeric(tablajava$java.Calificacion)
tablajava1
library(agricolae) 
k2=nclass.Sturges(tablajava1)
k2=as.numeric(k2)
k2
x2=range(as.numeric(tablajava$java.Calificacion))
x2
inicio2=as.numeric(x[1])
inicio2
final2=as.numeric(x[2])
final2
amplitud2=(final2-inicio2)/5
amplitud2

hist(tablajava1, breaks = seq(from=inicio2, to=final2, by=amplitud2), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaJavaR=table.freq(hist(tablajava1, breaks = seq(from=inicio2, to=final2, by=amplitud2), include.lowest = T, right = F,plot = T)
)
tablaJavaR


#-------JAVASCRIPT-------


javascript=dplyr::filter(datos, grepl('Javascript', TituloCurso, ignore.case = TRUE)) #18
print(javascript)
tablajavascript=data.frame(javascript$TituloCurso, javascript$Calificacion)


tablaOrdenadaJs=tablajavascript[order(tablajavascript$javascript.Calificacion, decreasing = TRUE),]
head(tablaOrdenadaJs)
tail(tablaOrdenadaJs)


tablajavascript1=as.numeric(tablajavascript$javascript.Calificacion)
tablajavascript1
library(agricolae) 
k3=nclass.Sturges(tablajavascript1)
k3=as.numeric(k3)
k3
x3=range(as.numeric(tablajavascript$javascript.Calificacion))
x3
inicio3=as.numeric(x[1])
inicio3
final3=as.numeric(x[2])
final3
amplitud3=(final3-inicio3)/5
amplitud3

hist(tablajavascript1, breaks = seq(from=inicio3, to=final3, by=amplitud3), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaJavascriptR=table.freq(hist(tablajavascript1, breaks = seq(from=inicio3, to=final3, by=amplitud3), include.lowest = T, right = F,plot = T)
)
tablaJavascriptR

#-------C#-------


csharp=dplyr::filter(datos, grepl('C#', TituloCurso, ignore.case = TRUE)) #18
csharp
tablacsharp=data.frame(csharp$TituloCurso, csharp$Calificacion)


tablaOrdenadaCsharp=tablacsharp[order(tablacsharp$csharp.Calificacion, decreasing = TRUE),]
head(tablaOrdenadaCsharp)
tail(tablaOrdenadaCsharp)


tablacsharp1=as.numeric(tablacsharp$csharp.Calificacion)
tablacsharp1
library(agricolae) 
k4=nclass.Sturges(tablacsharp1)
k4=as.numeric(k4)
k4
x4=range(as.numeric(tablacsharp$csharp.Calificacion))
x4
inicio4=as.numeric(x[1])
inicio4
final4=as.numeric(x[2])
final4
amplitud4=(final4-inicio4)/5
amplitud4

hist(tablacsharp1, breaks = seq(from=inicio4, to=final4, by=amplitud4), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaCSHARPR=table.freq(hist(tablacsharp1, breaks = seq(from=inicio4, to=final4, by=amplitud4), include.lowest = T, right = F,plot = T)
)
tablaCSHARPR

#-------RUBY-------

ruby=dplyr::filter(datos, grepl('Ruby', TituloCurso, ignore.case = TRUE)) #18
ruby
tablaruby=data.frame(ruby$TituloCurso, ruby$Calificacion)


tablaOrdenadaruby=tablaruby[order(tablaruby$ruby.Calificacion, decreasing = TRUE),]
head(tablaOrdenadaruby)
tail(tablaOrdenadaruby)


tablaruby1=as.numeric(tablaruby$ruby.Calificacion)
tablaruby1
library(agricolae) 
k5=nclass.Sturges(tablaruby1)
k5=as.numeric(k5)
k5
x5=range(as.numeric(tablaruby$ruby.Calificacion))
x5
inicio5=as.numeric(x[1])
inicio5
final5=as.numeric(x[2])
final5
amplitud5=(final5-inicio5)/5
amplitud5

hist(tablaruby1, breaks = seq(from=inicio5, to=final5, by=amplitud5), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaRUBYR=table.freq(hist(tablaruby1, breaks = seq(from=inicio5, to=final5, by=amplitud5), include.lowest = T, right = F,plot = T)
)
tablaRUBYR

#-------PHP-------

php=dplyr::filter(datos, grepl('php', TituloCurso, ignore.case = TRUE)) #18
php
tablaphp=data.frame(php$TituloCurso, php$Calificacion)


tablaOrdenadaphp=tablaphp[order(tablaphp$php.Calificacion, decreasing = TRUE),]
head(tablaOrdenadaphp)
tail(tablaOrdenadaphp)


tablaphp1=as.numeric(tablaphp$php.Calificacion)
tablaphp1
library(agricolae) 
k6=nclass.Sturges(tablaphp1)
k6=as.numeric(k6)
k6
x6=range(as.numeric(tablaphp$php.Calificacion))
x6
inicio6=as.numeric(x[1])
inicio6
final6=as.numeric(x[2])
final6
amplitud6=(final9-inicio9)/5
amplitud6

hist(tablaphp1, breaks = seq(from=inicio6, to=final6, by=amplitud6), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaPHPR=table.freq(hist(tablaphp1, breaks = seq(from=inicio6, to=final6, by=amplitud6), include.lowest = T, right = F,plot = T)
)
tablaPHPR

#-------SQL-------

sql=dplyr::filter(datos, grepl('sql', TituloCurso, ignore.case = TRUE)) #18
sql
tablasql=data.frame(sql$TituloCurso, sql$Calificacion)


tablaOrdenadasql=tablasql[order(tablasql$sql.Calificacion, decreasing = TRUE),]
head(tablaOrdenadasql)
tail(tablaOrdenadasql)


tablasql1=as.numeric(tablasql$sql.Calificacion)
tablasql1
library(agricolae) 
k7=nclass.Sturges(tablasql1)
k7=as.numeric(k7)
k7
x7=range(as.numeric(tablasql$sql.Calificacion))
x7
inicio7=as.numeric(x[1])
inicio7
final7=as.numeric(x[2])
final7
amplitud7=(final7-inicio7)/5
amplitud7

hist(tablasql1, breaks = seq(from=inicio7, to=final7, by=amplitud7), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaSQLR=table.freq(hist(tablasql1, breaks = seq(from=inicio7, to=final7, by=amplitud7), include.lowest = T, right = F,plot = T)
)
tablaSQLR

#-------C++-------

cmas=dplyr::filter(datos, grepl('(.*c\\+\\+.*)', TituloCurso, ignore.case = TRUE)) #18
cmas
tablacmas=data.frame(cmas$TituloCurso, cmas$Calificacion)

tablaOrdenadacmas=tablacmas[order(tablacmas$cmas.Calificacion, decreasing = TRUE),]
head(tablaOrdenadacmas)
tail(tablaOrdenadacmas)

tablacmas1=as.numeric(tablacmas$cmas.Calificacion)
tablacmas1
library(agricolae) 
k8=nclass.Sturges(tablacmas1)
k8=as.numeric(k8)
k8
x8=range(as.numeric(tablacmas$cmas.Calificacion))
x8
inicio8=as.numeric(x[1])
inicio8
final8=as.numeric(x[2])
final8
amplitud8=(final8-inicio8)/5
amplitud8

hist(tablacmas1, breaks = seq(from=inicio8, to=final8, by=amplitud8), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaCMASR=table.freq(hist(tablacmas1, breaks = seq(from=inicio8, to=final8, by=amplitud8), include.lowest = T, right = F,plot = T)
)
tablaCMASR

#-------MATLAB-------

matlab=dplyr::filter(datos, grepl('matlab', TituloCurso, ignore.case = TRUE)) #18
matlab
tablamatlab=data.frame(matlab$TituloCurso, matlab$Calificacion)

tablaOrdenadamatlab=tablamatlab[order(tablamatlab$matlab.Calificacion, decreasing = TRUE),]
head(tablaOrdenadamatlab)
tail(tablaOrdenadamatlab)

tablamatlab1=as.numeric(tablamatlab$matlab.Calificacion)
tablamatlab1
library(agricolae) 
k9=nclass.Sturges(tablamatlab1)
k9=as.numeric(k9)
k9
x9=range(as.numeric(tablamatlab$matlab.Calificacion))
x9
inicio9=as.numeric(x[1])
inicio9
final9=as.numeric(x[2])
final9
amplitud9=(final9-inicio9)/5
amplitud9

hist(tablamatlab1, breaks = seq(from=inicio9, to=final9, by=amplitud9), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaMATLABR=table.freq(hist(tablamatlab1, breaks = seq(from=inicio9, to=final9, by=amplitud9), include.lowest = T, right = F,plot = T)
)
tablaMATLABR

#-------SCALA-------

scala=dplyr::filter(datos, grepl('(.*scala.*)', TituloCurso, ignore.case = TRUE)) #18
tablascala=data.frame(scala$TituloCurso, scala$Calificacion)

tablaOrdenadascala=tablascala[order(tablascala$scala.Calificacion, decreasing = TRUE),]
head(tablaOrdenadascala)
tail(tablaOrdenadascala)


tablascala1=as.numeric(tablascala$scala.Calificacion)
tablascala1
library(agricolae) 
k=nclass.Sturges(tablascala1)
k=as.numeric(k)
k
x=range(as.numeric(tablascala$scala.Calificacion))
x
inicio=as.numeric(x[1])
inicio
final=as.numeric(x[2])
final
amplitud=(final-inicio)/5
amplitud

hist(tablascala1, breaks = seq(from=inicio, to=final, by=amplitud), include.lowest = T, right = F,plot = T, freq = T,main = "Histograma de frecuencias",ylab = "Frecuencia (cursos)",xlab="Calificaciones")

tablaR=table.freq(hist(tablascala1, breaks = seq(from=inicio, to=final, by=amplitud), include.lowest = T, right = F,plot = T)
)
tablaR

