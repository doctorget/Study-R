#Formacao Cientista de Dados

library(e1071)

cluster = cmeans(iris[,1:4], centers=3)
cluster

table(iris$Species, cluster$cluster) # medindo o agrupamento com a base real
