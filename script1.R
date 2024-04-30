library(dplyr)
library(readxl)
dir()
df <- read_excel("online_retail_II.xlsx" )

str(df)

df$`Customer ID`<- as.character(df$`Customer ID`)

summary(df)

# posibles outliers en Price y Quantity

a <- length(unique(df$Invoice))
b <- length(df$Invoice)
# pedidos unicos: [1] 28816
