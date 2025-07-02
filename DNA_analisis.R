####
# Análisis de Calidad de ADN: Gráficos con ggplot2
# Julio 2025
# Poliinterpares 2025
# LMHS

# =======================
# Cargar librerías y dna
# =======================
library(ggplot2)


# Leer archivo CSV (ajusta la ruta si es necesario)
dna <- read.csv("D:/Proyectos_y_revisiones/Académicos/Curso_R_poliinterpares/2025/R_Polinterpares2025/DNA.csv")
str(dna)

# Convertir columnas relevantes a factores
dna$Tipo_de_muestra <- as.factor(dna$Tipo_de_muestra)
dna$Kit.usado <- as.factor(dna$Kit.usado)
dna$Analista <- as.factor(dna$Analista)
str(dna)
View(dna)

# =======================
# 1. Histograma de concentraciones
# =======================
ggplot(dna, aes(x = Concentracion_ng_uL)) +
  geom_histogram(binwidth = 10) +
  labs(title = "Distribución de concentraciones de ADN", x = "Concentración (ng/µL)", y = "Frecuencia") 


# =======================
# 2. Boxplot: Concentración por tipo de muestra
# =======================
# Gráfico por default
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() 

# Cambiar titulos

ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() +
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra")

# cambiar el tema
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() +
  theme_minimal()+
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra")

# Girar el eje
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() +
  theme_minimal()+
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Cambiar tpitulo de leyenda
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() +
  theme_minimal()+
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  guides(fill = guide_legend(title = "Tipo de muestra"))

# Quitar título de leyenda
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() +
  theme_minimal()+
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  theme(legend.title = element_blank())

# QUitar leyenda
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Tipo_de_muestra)) +
  geom_boxplot() +
  theme_minimal()+
  labs(title = "Concentración por tipo de muestra", y = "Concentración (ng/µL)", x = "Tipo de muestra") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  theme(legend.position = "none")

# =======================
# 3. Boxplot: Concentración por kit de extracción
# =======================
ggplot(dna, aes(x = Kit.usado, y = Concentracion_ng_uL, fill = Kit.usado)) +
  geom_boxplot() +
  theme_bw() +
  labs(title = "Concentración por kit de extracción", y = "Concentración (ng/µL)", x = "Kit utilizado") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# =======================
# 4. Violín plot: A260/A280 por tipo de muestra
# =======================
ggplot(dna, aes(x = Tipo_de_muestra, y = A260_A280, fill = Tipo_de_muestra)) +
  geom_violin(trim = FALSE) +
  geom_jitter(width = 0.1, alpha = 0.5) +
  labs(title = "Relación A260/A280 por tipo de muestra", y = "A260/A280", x = "Tipo de muestra") +
  theme_minimal()

# =======================
# 5. Scatterplot: A260/A280 vs A260/A230
# =======================
ggplot(dna, aes(x = A260_A280, y = A260_A230, color = Tipo_de_muestra)) +
  geom_point(size = 2) +
  labs(title = "A260/A280 vs A260/A230", x = "A260/A280", y = "A260/A230") +
  theme_light()

# =======================
# 6. Scatterplot: Concentración vs A260/A280
# =======================
ggplot(dna, aes(x = A260_A280, y = Concentracion_ng_uL, color = Tipo_de_muestra)) +
  geom_point(size = 2) +
  labs(title = "Concentración vs A260/A280", x = "A260/A280", y = "Concentración (ng/µL)") +
  theme_minimal()

# =======================
# 7. Facet: Concentración por tipo de muestra y kit
# =======================
ggplot(dna, aes(x = Tipo_de_muestra, y = Concentracion_ng_uL, fill = Kit.usado)) +
  geom_boxplot() +
  facet_wrap(~ Kit.usado) +
  labs(title = "Concentración por tipo de muestra y kit", y = "Concentración (ng/µL)", x = "Tipo de muestra") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# =======================
# 8. Densidad de A260/A280 por kit
# =======================
ggplot(dna, aes(x = A260_A280, fill = Kit.usado)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distribución de A260/A280 por kit", x = "A260/A280", y = "Densidad") +
  theme_bw()


