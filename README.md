# Ejercicio Data Science
### *09/05/2024*

Primero he creado un repositorio en github, después he clonado en mi local. He guardado el archivo xlsx. y he crado un proyecto en R enlazado al repositorio github.
Para empezar, he cargado los datos en 'df' y he revisado los formatos de las variables mediante 'str', he tenido que cambiar algun formato. 
He hecho un analisis basico del data frame mediante el 'summary' y he calculado cuantos pedidos distintos habia en el dataframe con 'length(unique(df$Invoice))'.
Se ha crado un fichero *gitignore* para que ignore el fichero **.xlsx**. He hecho el primer commit con todo lo que tenia hecho.

Despues he calculado el precio medio de producto por pedido:
````
precio_por_pedido <- df %>% 
     group_by(Invoice) %>% 
     summarise(Precio_pedido = sum(Price),
               num_productos = n())

precio_medio_prod_por_pedido = precio_por_pedido %>% 
  mutate(precio_medio_por_producto = Precio_pedido / num_productos)
precio_medio_prod_por_pedido
````
Y he hecho el segundo commit una vez acabado esto.

Para terminar he calculado el numero de productos por pedido y el precio por pedido.
Después he echo el ultimo commit y he subido todo a github
