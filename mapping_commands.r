
library(readxl)

vitis2023 <- read_excel("vitis2023_issr_similarity.xlsx", 
     col_types = c("text", "numeric", "numeric", 
         "numeric"))

View(vitis2023)

vitis = as.data.frame(vitis2023)

class(vitis)
[1] "data.frame"

library(xlsx)
library(mapdata)
library(maptools)

par(mar=c(0.5,3.1,1,0))

harita=map('worldHires',xlim=c(44,51),ylim=c(38,42),resolution = 0)

cols=c('green','yellow','red','brown', 'grey', 'black', 'pink', 'salmon', 'maroon', 'purple', 'orange', 'blue', 'gold', 'magenta', 'cyan', 'navy', 'wheat', 'turquoise', 'orchid', 'chocolate', 'violet')

points(vitis$Boylam,vitis$Enlem,pch=19,col=cols[factor(vitis$`Benzerlik`)])

