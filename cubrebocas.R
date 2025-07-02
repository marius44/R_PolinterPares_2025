# Gráficos sobre el uso de cubrebocas
# Julio 2025
# Poliinterpares 2025
# LMHS


# =======================
# Cargar librerías y datos
# =======================
library(ggplot2)


# Leer archivo CSV 
setwd("D:/Proyectos_y_revisiones/Académicos/Curso_R_poliinterpares/2025/R_Polinterpares2025/")
datos_covid <- read.csv("usodecubrebocasCORRECTO.csv")

# Ver la tabla
str(datos_covid)
View(datos_covid)
# Preparar factores
datos_covid$Sexo <- as.factor(datos_covid$Sexo)
datos_covid$Uso_cubrebocas <- as.factor(datos_covid$Uso_cubrebocas)

######################################################################
# ==========================
# Gráficos en R base: Uso de cubrebocas
# ==========================
# Pretratamiento
tabla_sexo <- table(datos_covid$Sexo, datos_covid$Uso_cubrebocas)
# Gráfico 1: Uso de cubrebocas por sexo (proporción)
barplot(tabla_sexo)

# Colores y otras cosas
colores <- c("No" = "#e74c3c", "Sí" = "#2ecc71")

barplot(t(tabla_sexo),
        beside = FALSE,
        col = colores,
        legend.text = TRUE,
        args.legend = list(x = "topright", inset = 0.02),
        main = "Uso de cubrebocas por sexo",
        ylab = "Proporción",
        xlab = "Sexo")




######################################################################
# =======================
# Porcentaje de uso de cubrebocas por sexo
# =======================
ggplot(datos_covid, aes(x = Sexo, fill = Uso_cubrebocas)) +
  geom_bar() +
  labs(title = "Uso de cubrebocas por sexo", y = "Proporción", x = "Sexo")





