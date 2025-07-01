# Conociendo R
# Julio 2025
# Poliinterpares 2025
# LMHS

################################################################################
# Conociendo R 

# Asignacion de valores
x <- 1
x

# Que no hacer
1m <-  5
%w <-  4

# Asignacion de valores
# Diferentes tipos de valores para R
y <- 2
w <- 2.3
z <- 3 + 2i
alfa  <- "alfa" # los valores con letras van entre comillas
Beta <- "Y luego sigue gamma"
verdad <- TRUE

# Veamos los valores
x
y
w
z
alfa
Beta
verdad

# Operaciones matematicas basicas
x + y
w - y
10 * w
z + x
alfa + w
w %% y
w %/% y
log10(100)
sqrt(25)

# Ver resultados de una operación
suma <- x + y
suma

resta <- x - 4
resta

Multiplicacion <- w * 1000
Multiplicacion
multiplicacion

raiz <- sqrt(81)
raiz

################################################################################
# Funciones
print(x)
help(print)
c(1, 2, 3) 
usted <- readline("Introduce tu nombre: ")
usted

# Creemos un objeto con lista de nombres
nombres <- c("Julia", "Matías", "Mariana", "Luis")
nombres

# Creemos un objeto equisye
equisye <- paste(c("x","y"), rep(1:10, each=2), sep="_")
equisye

################################################################################
# Cambio de clase
class(y)
y
x + y
y <- as.character(y)   
# Checamos la clase del objeto
class(y)
y
x + y # ¿Qué pasó aquí? 

################################################################################
# Objetos
# Muestra todos los obejtos en en el ambiente
objects()

# Muestra la clase de los objetos
class(alfa)
class(equis_mayor)
equis_mayor
class(Multiplicacion)
class(nombres)
class(w)
class(z)

# Cambio de clase
# as.numeric(), as.integer(), as.character(), as.logical() y as.complex()
# cambiamos la clase del objeto y de numeric a character
class(y)
y
y <- as.character(y)   
# Vemos la clase de este objeto
class(y)
y

x + y

# Regresemos el objeto a su clase original
y <- as.numeric(y)  
class(y)
y

x + y

################################################################################
# Veamos el objeto nombres. 
nombres
class(nombres)

# creamos el objeto sexo 
sexo <- c("Femenino", "Masculino", "Femenino", 
                 "Masculino")
sexo
# Revisamos la estructura del objeto sexo
str(sexo)

# Revisemos la clase
class(sexo)

# Modifiquemos eso
sexo <- as.factor(sexo)

# Revisamos la nueva estructura del objeto sexo
str(sexo)

# Revisemos la nueva clase del objeto sexo
class(sexo)


# Niveles del objeto de clase factor
levels(sexo)


####
# Hagamos una lista
# creamos el objeto lista1 de clase lista
lista1 <- list(usted, y, nombres)
lista1

# consultando el tercer slot del objeto lista1
lista1[3]

# poniéndole el nombre a los slots del objeto lista1
names(lista1) <- c("objeto_usted", "objeto_y", "objeto_nombres")

#Esto permite llamar a un slot tanto por su índice o por su nombre usando el símbolo $.
lista1$objeto_nombres
lista1[3]
lista1$objeto_nombres
lista1$objeto_y
lista1$objeto_usted

################################################################################
### Matrices
# Hagamos una matriz  dos filas por tres columnas ordenado por columnas
matriz1 <- matrix( c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = FALSE)
matriz1
class(matriz1)
View(matriz1)

# Hagamos una matriz  dos filas por tres columnas ordenado por filas
matriz2 <- matrix( c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)
matriz2
class(matriz2)
View(matriz2)
################################################################################
# Haremos un objeto mas complejo
# primero crearemos un vector llamado ventas_1 con los números 2 , 3 , 4.5 y 5 
# Estos numeros representan millones de pesos
ventas_1 <- c(2, 3, 4.5, 5)
ventas_1 

# AHora repetiremos los valores
# se repite el objeto ventas_1 3 veces
v2 <- rep(ventas_1, times=3)
v2

# se repite cada elemento del objeto ventas_1 3 veces
v3 <- rep(ventas_1, each=3)
v3

# Matriz
# creando una matriz uniendo los dos vectores como columnas
matriz2 <- cbind(v2, v3)
matriz2

class(matriz2)
View(matriz2)
# Tambien hay arrays
# creando un array de dos matrices cada una con 3 filas y 3 columnas
array1 <- array(c(5, 9, 3, 10, 11, 12, 13, 14, 15),dim = c(3,3,2))
array1
class(array1)
array1

# Data.frames
# creando un data frame 
d_ventas <- data.frame(ventas_1, nombres, sexo)
d_ventas 
class(d_ventas)
str(d_ventas)

# Cambiemos nombres
# cambiando el nombre d ela primera variable
names(d_ventas)[1] <- "ventas"
str(d_ventas)
d_ventas
# Accesando a variables del data frame
# constatando la clase de cada variable en el data frame
class(d_ventas$sexo)

# Recuperar un dato en particular
# segundo dato de la variable que se encuentra en la tercera columna
d_ventas
d_ventas[2,3]

# Tambien se puede ver una fila completa
# extrayendo la segunda observación para todas las variables
d_ventas[2,]

# O una columna
# extrayendo la tercera columna
d_ventas[,3]
d_ventas[,2]

################################################################################
# Instalacion de paquetes
install.packages("ggplot2")

# Cargar la libreria
library("ggplot2")

