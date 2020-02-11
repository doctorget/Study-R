#Formacao Cientista de Dados

cluster = kmeans(iris[1:4],centers=3) # args(base_de_dados, quantos centroids)

table(iris$Species,cluster$cluster)

plot(iris[,1:4],col=cluster$cluster)

set.seed(2014)
cluster = kmeans(iris[1:4],centers=3)
table(iris$Species,cluster$cluster)
plot(iris[,1:4],col=cluster$cluster)cl # Grafico de dispersão Mostrando a separação das classes