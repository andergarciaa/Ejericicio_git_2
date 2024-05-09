#1.	Inicializa un repositorio remoto sin gitignore ni readme
#2.	Clona en local
#3.	En el directorio de trabajo donde hayas inicializado el repositorio genera 
#   una carpeta de datos y guarda el xlsx
#4.	Genera un proyecto de R


# ::  5.	Carga el fichero y revisa formatos

library(dplyr)
library(readxl)
dir()
df <- read_excel("online_retail_II.xlsx" )

str(df)
df$`Customer ID`<- as.character(df$`Customer ID`)

# ::  6.	Haz un análisis básico de la información contenida en el fichero

   summary(df)    # posibles outliers en Price y Quantity


# ::  7.	Calcula cuántos pedidos distintos hay en el fichero

   length(unique(df$Invoice))   # pedidos unicos: [1] 28816
 
   
# ::  8.	Genera un fichero gitignore para que no sub al repositorio los ficheros .xlsx
# ::  9.	Comitea por primera vez
 
   
# ::  10.	Calcula el precio medio de producto por pedido
precio_medio_pedido <- df %>% 
  group_by(Invoice) %>% 
  summarise(precio_medio = mean(Price))
precio_medio_pedido

