#Libreria para exportar el archivo de excel

install.packages("readxl")

#Liberia para crear los graficos

install.packages("ggplot2")

#Se llaman las librerias
library(readxl)
library(ggplot2)

#PRIMERA TABLA DE DATOS

#Se descarga los datos o la tabla de datos de http://datos.gob.do/

download.file(url ="http://intabaco.gob.do/transparencia/index.php/datos-abiertos/category/715-informe-de-becas-intabaco-2018-2020?download=3487:informe-de-becas-intabaco-2018-2020", destfile = "Informe de Becas INTABACO 2018-2020.xlsx", mode = "wb")

#Se importa el archivo excel con los datos.
archivo <- readxl::read_excel("Informe de Becas INTABACO 2018-2020.xlsx")

#Se crea la grafica por Universidad
ggplot2::ggplot(archivo,aes(x=UNIVERSIDAD)) + geom_bar(fill="red")

#Se crea la grafica por ciclos
ggplot2::ggplot(archivo,aes(x=CICLO)) + geom_bar(fill="red")

#Se crea la grafica por Cuatrimestre
ggplot2::ggplot(archivo,aes(x=RECINTO)) + geom_bar(fill="red")

#En esta tabla de datos viene un informe de beneficiados por becas donde en
#los graficos podemos ver cuantas personas de los beneficiados se dividen en
#Universidades, Ciclos y los Recintos.


#SEGUNDA TABLA DE DATOS

#Se descarga los datos o la tabla de datos de http://datos.gob.do/

download.file(url ="https://www.itsc.edu.do/transparencia/datosabiertos/compras/ordenes-de-compra-2018-2019.xlsx", destfile = "Ordenes-de-compra-2018-2019.xlsx", mode = "wb")

#Se importa el archivo excel con los datos.
archivo <- readxl::read_excel("Ordenes-de-compra-2018-2019.xlsx")

#Se crea la grafica por Modalidad
ggplot2::ggplot(archivo,aes(x=Modalidad)) + geom_bar(fill="blue")

#Este tiene datos de ordenes de compra del 2018 y 2019 donde en el grafico
#mostrara la cantidad de compras en las cuales se dividiran en modalidades.


#TERCERA TABLA DE DATOS

#Se descarga los datos o la tabla de datos de http://datos.gob.do/

download.file(url ="https://inabie.gob.do/transparencia/index.php/datos-abiertos/category/1702-2020?download=7878:estudiantes-beneficiados-con-utileria-escolar-2020", destfile = "Estudiantes Beneficiados con Utileria Escolar 2020.xlsx", mode = "wb")

#Se importa el archivo excel con los datos.
archivo <- readxl::read_excel("Estudiantes Beneficiados con Utileria Escolar 2020.xlsx")

#Se crea la grafica por Tanda
ggplot2::ggplot(archivo,aes(x=TANDA)) + geom_bar(fill="blue")

#Este tiene datos de estudiantes que se beneficiaron con utileria escolar
#donde la grafica se dividira en mostrar la cantidad de estudiantes
#por tanda.
