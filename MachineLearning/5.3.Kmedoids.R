#Formacao Cientista de Dados

install.packages("cluster", dependencies=T)
library(cluster)
cluster = pam(iris[,1:4],k=3)

cluster

plot(cluster)
 
table(iris$Species,cluster$clustering) # tirando a prova real do agrupamento