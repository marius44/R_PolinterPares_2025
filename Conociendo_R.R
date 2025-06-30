# Conociendo R
# Julio 2025
# Poliinterpares 2025
# LMHS

#### Conociendo R

x <- 1
x
1m <-  5
%w <-  4

x# Asignacion de valores
x <- 4
y <- 2
w <- 2.3
z <- 3 + 2i
alfa  <- "alfa" # los valores con letras van entre comillas
Beta <- "Y luego sigue gamma" 

x
y
w
z
alfa
Beta



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

# Asignación de resultados
suma <- x + y
suma

resta <- x - 4
resta

Multiplicacion <- w * 1000
Multiplicacion
multiplicacion

raiz <- sqrt(81)
raiz


# Relación 
# ¿es x igual a y?
x == y

x != y

x >= y

x >= x

x <= y

equis_mayor <- x <= y
equis_mayor

# Logicos
# ! (NOT), & (AND), | (OR)
y > x & sqrt(81) # y es mayor que x y la raiz de 81
x
y
x != y | w # x es diferente que y o que w

x != x | w # x es diferente que x o que w


y > x & sqrt(y) > 3  # y es mayor que x y la raiz de y esto es mayor que 3



# Expresiones
data(mtcars)
plot(mtcars)

help(print)
?plot

c(1,2,3)
nombres <- c("Julia", "Matías", "Mariana", "Luis")# creamos el objeto de nombres
nombres

# creamos el objeto de nombres2 con nombres para la variable 
nombres2 <- paste(c("x","y"), rep(1:10, each=1), sep="_")
nombres2   

###############################################################################
# Objetos
# Muestra todos los obejtos en en el ambiente
objects()

# Muestra la clase de objeto
class(alfa)
class(equis_mayor)
equis_mayor
class(Multiplicacion)
class(nombres)
class(w)
class(z)
class()

# Cambio de clase
# as.numeric(), as.integer(), as.character(), as.logical() y as.complex()
# cambiamos la clase del objeto y de numeric a character
class(y)
y
y <- as.character(y)   
# miramos la clase de este objeto
class(y)
y

x + y

# Regresemos el objeto a su clase original
y <- as.numeric(y)  
class(y)
y

x + y

#
# Veamos nombres.
nombres
class(nombres)
# creamos el objeto sexo 
sexo <- factor(c("Femenino", "Masculino", "Femenino", 
                 "Masculino"))
# Revisemos la clase
class(sexo)

# Niveles del objeto de clase factor
levels(sexo)


####
# Hagamos una lista
# creamos el objeto l1 de clase lista
l1 <- list(equis_mayor, y, nombres2)
l1

# consultando el tercer slot del objeto l1
l1[3]

# poniéndole el nombre a los slots del objeto l1
names(l1) <- c("objeto_equis_mayor", "objeto_y", "objeto_nombres")

#Esto permite llamar a un slot tanto por su índice o por su nombre usando el símbolo $.
l1$objeto_nombres
l1[3]
l1$objeto_nombres

# Hagamos una matriz  dos filas por tres columnas ordenado por columnas
m1 <- matrix( c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = FALSE)
m1
class(m1)

# Hagamos una matriz  dos filas por tres columnas ordenado por filas
ma <- matrix( c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)
ma
class(ma)

###############################################################################
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
m2 <- cbind(v2, v3)
m2

class(m2)

# Tambien hay arrays
# creando un array de dos matrices cada una con 3 filas y 3 columnas
a1 <- array(c(5, 9, 3, 10, 11, 12, 13, 14, 15),dim = c(3,3,2))
a1
class(a1)

# Data.frames
# creando un data frame 
d_ventas <- data.frame(ventas_1, nombres, sexo)
d_ventas 
class(d_ventas)
str(d_ventas)

# Cambiemos nombres
# cambiando el nombre d ela preimera variable
names(d_ventas)[1] <- "ventas"
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

