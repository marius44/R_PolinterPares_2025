# Conociendo R
# Julio 2025
# Poliinterpares 2025
# LMHS

################################################################################
# Conociendo R 

print("hola mundo")
x <- 1

##### Errores ######
# x<-1 Asi no se debe escribir una linea

10m <- 45
%w <- 4

#### asignacion de valores ###
y <- 2
w <- 2.3
z <- 3 + 2i
alfa <- "alfa"
Beta <- "y luego sigue gamma!"
gamma <- delta
verdad <- TRUE
mentira <- "FALSE"

### Calculadora ####
x + y
w - y
10 * w
z + x
alfa + w 
log10(100)
sqrt(25)

suma <- x + y
suma

resta <- x - 4
resta

Multiplicacion <- w * 5000 
Multiplicacion 
Multiplicacion

### Funciones ###
print(w)
help(print)
c(1,2,3)
usted <- readline("Introduce tu nombre: ")
usted

nombres <- c("Julia", "Matias", "Mariana", "Luis")
nombres

equisye <- paste(c("x","y"), rep(1:10, each=2), sep="_")
equisye

#### Clases ####
class(y)
class(w)
class(mentira)
class(verdad)

y <- as.character(y) # cambia a caracter
class(y)
x + y

y <- as.numeric(y) # cambia a numero
class(y)
x + y

### factor ####
nombres
class(nombres)

sexo <- c("Femenino", "Masculino", "Femenino", "Masculino")
sexo
class(sexo)

sexo <- as.factor(sexo)
sexo
class(sexo)
levels(sexo)
levels(nombres)

##### Listas ####
lista1 <- list(usted, y, nombres)
lista1

lista1[1] # sirve para llamar a una posicion por su numero
lista1[3]

names(lista1) <- c("objeto_usted", "objeto_y", "objeto_nombres") #para dar nombres a las posiciones
lista1 
lista1$objeto_nombres # sirve para llamar a una posicion por su nombre
lista1$objeto_usted

### MATRICES
matriz1 <- matrix(c(1,2,3,4,5,6), nrow=2, ncol=3, byrow = FALSE)
matriz1
matriz1[1,2]

ventas1 <- c(2,3,4.5,5)
ventas1

ventas2 <- rep(ventas1, times=3)
ventas2
ventas3 <- rep(ventas1, each=3)
ventas3

matriz2 <- cbind(ventas2, ventas3)
matriz2

### array #####
array1 <- array(c(5, 9, 3, 10, 11, 12, 13, 14, 15),dim = c(3,3,2))
array1

### DATA FRAME ####
d_ventas <- data.frame(ventas1, nombres, sexo)
d_ventas
class(d_ventas)
str(d_ventas)

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

