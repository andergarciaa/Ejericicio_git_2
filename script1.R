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
precio_por_pedido <- df %>% 
     group_by(Invoice) %>% 
     summarise(Precio_pedido = sum(Price),
               num_productos = n())

precio_medio_prod_por_pedido = precio_por_pedido %>% 
  mutate(precio_medio_por_producto = Precio_pedido / num_productos)
precio_medio_prod_por_pedido

# :: 11.	Comité por segunda vez

# :: 12.	Calcula el número de productos por pedido

num_productos_por_pedido <- df %>% 
  group_by(Invoice) %>% 
  summarise(numero_prods = n())
num_productos_por_pedido

# :: 13.	Calcula el precio por pedido

precio_por_pedido <- df %>% 
  group_by(Invoice) %>% 
  summarise(Precio_pedido = sum(Price))
precio_por_pedido

# :: 14.	Comitea por última vez
# :: 15.	Sube todo a github
