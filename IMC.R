# IMC
# Junio 2024
# Polinterpares
# LMHS

# Calculo IMC

lmhs <- 80/(1.75^2)
lmhs

# FUNCION PROPIA PARA CALCULAR IMC
funcion_IMC <- function(w,h){
  q <- w/(h^2)
  return(q)
}
funcion_IMC(80, 1.75)

# Set datos
setwd(dir = "D:/Proyectos_y_revisiones/Académicos/Curso_R_poliinterpares/2025/R_Polinterpares2025/")
IMC <- read.csv("IMC.csv")
str(IMC)
head(IMC)

# Resumen estisticao
summary(IMC)

# FACTOR
IMC$sexo <- as.factor(IMC$sexo)
str(IMC)
summary(IMC)

# AGREGAR COLUMNA CON IMC
IMC$IMC <- IMC$peso / (IMC$altura^2)
str(IMC)
summary(IMC)

IMC$IMC <- mapply(funcion_IMC, IMC$peso, IMC$altura)
str(IMC)
View(IMC)
summary(IMC)

# Graficar

ggplot(IMC, aes(x = sexo, y = IMC, fill = sexo)) +
  geom_boxplot() +
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


