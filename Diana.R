install.packages("dplyr")
install.packages("devtools")
install.packages("agricolae")

library(dplyr)
library(stringr)
library(agricolae) 


archivo=read.csv("CursosGeneral.csv", 
                 header = TRUE, sep = ",", dec = ".",encoding = "UTF-8")

print(archivo)

#--------------------------------------------------------------------------
#----------------------------------JavaScript------------------------------
#--------------------------------------------------------------------------

javascript=dplyr::filter(archivo, grepl('Javascript', TituloCurso, ignore.case = TRUE)) #50 cursos
nrow(javascript)
print(javascript)

javascript$Precio <- gsub(',', '.', javascript$Precio)
javascript$Precio <- gsub('Free', '0', javascript$Precio, ignore.case = TRUE)


javascript$preciofinal=str_extract(javascript$Precio,"[0-9]+(.[0-9]+)?")
print(javascript$preciofinal)
print(javascript)
row(javascript)

javascriptpreciofinal=as.numeric(javascript$preciofinal)
javascriptpreciofinal
tablajavascript=data.frame(javascript$TituloCurso, javascriptpreciofinal)
row(tablajavascript)
print(tablajavascript)
tablajavascript

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablajavascript
categoria1=filter(tablajavascript, javascriptpreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$javascript.TituloCurso)
#25-50
categoria2=filter(tablajavascript, javascriptpreciofinal>25 & javascriptpreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$javascript.TituloCurso)
#50-100
categoria3=filter(tablajavascript, javascriptpreciofinal>50.00 & javascriptpreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$javascript.TituloCurso)
#100+
categoria4=filter(tablajavascript, javascriptpreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$javascript.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de JavaScript", xlab = "Categorías de Precios")


#--------------------------------------------------------------------------
#----------------------------------PYTHON----------------------------------
#--------------------------------------------------------------------------

python=dplyr::filter(archivo, grepl('(.*python.*)', TituloCurso, ignore.case = TRUE)) #310
nrow(python)
print(python)

python$Precio <- gsub(',', '.', python$Precio)
python$Precio <- gsub('Free', '0', python$Precio, ignore.case = TRUE)


python$preciofinal=str_extract(python$Precio,"[0-9]+(.[0-9]+)?")
print(python$preciofinal)
print(python)
row(python)

pythonpreciofinal=as.numeric(python$preciofinal)
pythonpreciofinal
tablapython=data.frame(python$TituloCurso, pythonpreciofinal)
row(tablapython)
print(tablapython)
tablapython

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablapython
categoria1=filter(tablapython, pythonpreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$python.TituloCurso)
#25-50
categoria2=filter(tablapython, pythonpreciofinal>25 & pythonpreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$python.TituloCurso)
#50-100
categoria3=filter(tablapython, pythonpreciofinal>50.00 & pythonpreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$python.TituloCurso)
#100+
categoria4=filter(tablapython, pythonpreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$python.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de Python", xlab = "Categorías de Precios")

#--------------------------------------------------------------------------
#----------------------------------JAVA------------------------------------
#--------------------------------------------------------------------------

java=dplyr::filter(archivo, grepl('(.*Java .*)', TituloCurso, ignore.case = TRUE))#120
nrow(java)
print(java)

java$Precio <- gsub(',', '.', java$Precio)
java$Precio <- gsub('Free', '0', java$Precio, ignore.case = TRUE)


java$preciofinal=str_extract(java$Precio,"[0-9]+(.[0-9]+)?")
print(java$preciofinal)
print(java)
row(java)

javapreciofinal=as.numeric(java$preciofinal)
javapreciofinal
tablajava=data.frame(java$TituloCurso, javapreciofinal)
row(tablajava)
print(tablajava)
tablajava

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablajava
categoria1=filter(tablajava, javapreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$java.TituloCurso)
#25-50
categoria2=filter(tablajava, javapreciofinal>25 & javapreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$java.TituloCurso)
#50-100
categoria3=filter(tablajava, javapreciofinal>50.00 & javapreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$java.TituloCurso)
#100+
categoria4=filter(tablajava, javapreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$java.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de Java", xlab = "Categorías de Precios")

#--------------------------------------------------------------------------
#----------------------------------RUBY------------------------------------
#--------------------------------------------------------------------------

ruby=dplyr::filter(archivo, grepl('(.*ruby.*)', TituloCurso, ignore.case = TRUE)) #55
nrow(ruby)
print(ruby)

ruby$Precio <- gsub(',', '.', ruby$Precio)
ruby$Precio <- gsub('Free', '0', ruby$Precio, ignore.case = TRUE)


ruby$preciofinal=str_extract(ruby$Precio,"[0-9]+(.[0-9]+)?")
print(ruby$preciofinal)
print(ruby)
row(ruby)

rubypreciofinal=as.numeric(ruby$preciofinal)
rubypreciofinal
tablaruby=data.frame(ruby$TituloCurso, rubypreciofinal)
row(tablaruby)
print(tablaruby)
tablaruby

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablaruby
categoria1=filter(tablaruby, rubypreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$ruby.TituloCurso)
#25-50
categoria2=filter(tablaruby, rubypreciofinal>25 & rubypreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$ruby.TituloCurso)
#50-100
categoria3=filter(tablaruby, rubypreciofinal>50.00 & rubypreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$ruby.TituloCurso)
#100+
categoria4=filter(tablaruby, rubypreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$ruby.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de Ruby", xlab = "Categorías de Precios")

#--------------------------------------------------------------------------
#----------------------------------SQL-------------------------------------
#--------------------------------------------------------------------------

sql=dplyr::filter(archivo, grepl('(.*sql.*)', TituloCurso, ignore.case = TRUE)) #43
nrow(sql)
print(sql)

sql$Precio <- gsub(',', '.', sql$Precio)
sql$Precio <- gsub('Free', '0', sql$Precio, ignore.case = TRUE)


sql$preciofinal=str_extract(sql$Precio,"[0-9]+(.[0-9]+)?")
print(sql$preciofinal)
print(sql)
row(sql)

sqlpreciofinal=as.numeric(sql$preciofinal)
sqlpreciofinal
tablasql=data.frame(sql$TituloCurso, sqlpreciofinal)
row(tablasql)
print(tablasql)
tablasql

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablasql
categoria1=filter(tablasql, sqlpreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$sql.TituloCurso)
#25-50
categoria2=filter(tablasql, sqlpreciofinal>25 & sqlpreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$sql.TituloCurso)
#50-100
categoria3=filter(tablasql, sqlpreciofinal>50.00 & sqlpreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$sql.TituloCurso)
#100+
categoria4=filter(tablasql, sqlpreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$sql.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de SQL", xlab = "Categorías de Precios")


#--------------------------------------------------------------------------
#----------------------------------PHP-------------------------------------
#--------------------------------------------------------------------------

php=dplyr::filter(archivo, grepl('(.*php.*)', TituloCurso, ignore.case = TRUE)) #40
nrow(php)
print(php)

php$Precio <- gsub(',', '.', php$Precio)
php$Precio <- gsub('Free', '0', php$Precio, ignore.case = TRUE)


php$preciofinal=str_extract(php$Precio,"[0-9]+(.[0-9]+)?")
print(php$preciofinal)
print(php)
row(php)

phppreciofinal=as.numeric(php$preciofinal)
phppreciofinal
tablaphp=data.frame(php$TituloCurso, phppreciofinal)
row(tablaphp)
print(tablaphp)
tablaphp

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablaphp
categoria1=filter(tablaphp, phppreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$php.TituloCurso)
#25-50
categoria2=filter(tablaphp, phppreciofinal>25 & phppreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$php.TituloCurso)
#50-100
categoria3=filter(tablaphp, phppreciofinal>50.00 & phppreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$php.TituloCurso)
#100+
categoria4=filter(tablaphp, phppreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$php.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de PHP", xlab = "Categorías de Precios")



#--------------------------------------------------------------------------
#----------------------------------C#--------------------------------------
#--------------------------------------------------------------------------

C1=dplyr::filter(archivo, grepl('(.*c#.*)', TituloCurso, ignore.case = TRUE)) #68
nrow(C1)
print(C1)

C1$Precio <- gsub(',', '.', C1$Precio)
C1$Precio <- gsub('Free', '0', C1$Precio, ignore.case = TRUE)


C1$preciofinal=str_extract(C1$Precio,"[0-9]+(.[0-9]+)?")
print(C1$preciofinal)
print(C1)
row(C1)

C1preciofinal=as.numeric(C1$preciofinal)
C1preciofinal
tablac1=data.frame(C1$TituloCurso, C1preciofinal)
row(tablac1)
print(tablac1)
tablac1

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablac1
categoria1=filter(tablac1, C1preciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$C1.TituloCurso)
#25-50
categoria2=filter(tablac1, C1preciofinal>25 & C1preciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$C1.TituloCurso)
#50-100
categoria3=filter(tablac1, C1preciofinal>50.00 & C1preciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$C1.TituloCurso)
#100+
categoria4=filter(tablac1, C1preciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$C1.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de C#", xlab = "Categorías de Precios")




#--------------------------------------------------------------------------
#----------------------------------C++--------------------------------------
#--------------------------------------------------------------------------

C2=dplyr::filter(archivo, grepl('(.*c\\+\\+.*)', TituloCurso, ignore.case = TRUE)) #53
nrow(C2)
print(C2)

C2$Precio <- gsub(',', '.', C2$Precio)
C2$Precio <- gsub('Free', '0', C2$Precio, ignore.case = TRUE)


C2$preciofinal=str_extract(C2$Precio,"[0-9]+(.[0-9]+)?")
print(C2$preciofinal)
print(C2)
row(C2)

C2preciofinal=as.numeric(C2$preciofinal)
C2preciofinal
tablac2=data.frame(C2$TituloCurso, C2preciofinal)
row(tablac2)
print(tablac2)
tablac2

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablac2
categoria1=filter(tablac2, C2preciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$C2.TituloCurso)
#25-50
categoria2=filter(tablac2, C2preciofinal>25 & C2preciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$C2.TituloCurso)
#50-100
categoria3=filter(tablac2, C2preciofinal>50.00 & C2preciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$C2.TituloCurso)
#100+
categoria4=filter(tablac2, C2preciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$C2.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de C++", xlab = "Categorías de Precios")


#--------------------------------------------------------------------------
#----------------------------------SCALA-----------------------------------
#--------------------------------------------------------------------------

scala=dplyr::filter(archivo, grepl('(.*scala.*)', TituloCurso, ignore.case = TRUE)) #18
nrow(scala)
print(scala)

scala$Precio <- gsub(',', '.', scala$Precio)
scala$Precio <- gsub('Free', '0', scala$Precio, ignore.case = TRUE)


scala$preciofinal=str_extract(scala$Precio,"[0-9]+(.[0-9]+)?")
print(scala$preciofinal)
print(scala)
row(scala)

scalapreciofinal=as.numeric(scala$preciofinal)
scalapreciofinal
tablascala=data.frame(scala$TituloCurso, scalapreciofinal)
row(tablascala)
print(tablascala)
tablascala

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablascala
categoria1=filter(tablascala, scalapreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$scala.TituloCurso)
#25-50
categoria2=filter(tablascala, scalapreciofinal>25 & scalapreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$scala.TituloCurso)
#50-100
categoria3=filter(tablascala, scalapreciofinal>50.00 & scalapreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$scala.TituloCurso)
#100+
categoria4=filter(tablascala, scalapreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$scala.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de Scala", xlab = "Categorías de Precios")



#--------------------------------------------------------------------------
#----------------------------------MATLAB----------------------------------
#--------------------------------------------------------------------------

matlab=dplyr::filter(archivo, grepl('(.*matlab*)', TituloCurso, ignore.case = TRUE)) #14
nrow(matlab)
print(matlab)

matlab$Precio <- gsub(',', '.', matlab$Precio)
matlab$Precio <- gsub('Free', '0', matlab$Precio, ignore.case = TRUE)


matlab$preciofinal=str_extract(matlab$Precio,"[0-9]+(.[0-9]+)?")
print(matlab$preciofinal)
print(matlab)
row(matlab)

matlabpreciofinal=as.numeric(matlab$preciofinal)
matlabpreciofinal
tablamatlab=data.frame(matlab$TituloCurso, matlabpreciofinal)
row(tablamatlab)
print(tablamatlab)
tablamatlab

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablamatlab
categoria1=filter(tablamatlab, matlabpreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$matlab.TituloCurso)
#25-50
categoria2=filter(tablamatlab, matlabpreciofinal>25 & matlabpreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$matlab.TituloCurso)
#50-100
categoria3=filter(tablamatlab, matlabpreciofinal>50.00 & matlabpreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$matlab.TituloCurso)
#100+
categoria4=filter(tablamatlab, matlabpreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$matlab.TituloCurso)

tablaCategorias=rbind(categoria1,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras de Matlab", xlab = "Categorías de Precios")


#--------------------------------------------------------------------------
#----------------------------------GENERAL---------------------------------
#--------------------------------------------------------------------------


general=rbind(javascript,python,java,ruby,php,sql,C1,C2,scala, matlab)
nrow(general)
print(general)

general$Precio <- gsub(',', '.', general$Precio)
general$Precio <- gsub('Free', '0', general$Precio, ignore.case = TRUE)


general$preciofinal=str_extract(general$Precio,"[0-9]+(.[0-9]+)?")
print(general$preciofinal)
print(general)
row(general)

generalpreciofinal=as.numeric(general$preciofinal)
generalpreciofinal
tablageneral=data.frame(general$TituloCurso, generalpreciofinal)
row(tablageneral)
print(tablageneral)
tablageneral

#CURSOS POR CATEGORÍA DE PRECIOS
#0-25
tablageneral
categoria1=filter(tablageneral, generalpreciofinal<=25.00)
categoria1
categoria1$categorias <- gsub('.*', 'categoria1 [0-25]', categoria1$general.TituloCurso)
#25-50
categoria2=filter(tablageneral, generalpreciofinal>25 & generalpreciofinal<=50.00)
categoria2
categoria2$categorias <- gsub('.*', 'categoria2 (25-50]', categoria2$general.TituloCurso)
#50-100
categoria3=filter(tablageneral, generalpreciofinal>50.00 & generalpreciofinal<=100)
categoria3
categoria3$categorias <- gsub('.*', 'categoria3 (50-100]', categoria3$general.TituloCurso)
#100+
categoria4=filter(tablageneral, generalpreciofinal>100.00)
categoria4
categoria4$categorias <- gsub('.*', 'categoria4 (100+)', categoria4$general.TituloCurso)

tablaCategorias=rbind(categoria1,categoria2,categoria3,categoria4)
tablaCategorias

tabla1=table(tablaCategorias$categorias)
tabla1
tabla3=prop.table(tabla1) 
tabla3
sum(tabla1)
tablaR=cbind(Absoluta=tabla1,Relativa=tabla3, CF=cumsum(tabla1),CPF=cumsum(tabla3)) 
tablaR
barplot(tabla3, main = "Diagrama de barras General", xlab = "Categorías de Precios")

