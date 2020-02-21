#Formacao Cientista de Dados

install.packages("arules")
library(arules)
transacoes <-read.transactions(file.choose(),format="basket",sep=",") # formato para ler transações e basket, que é o tipo cesta de compras
transacoes # mostra linhas(transações) e colunas items 
inspect(transacoes) # mostra as transações
 
image(transacoes) #cria uma imagem das transações
regras <- apriori(transacoes, parameter= list(supp=0.5, conf=0.5)) # list(suporte e confiança minimos)
regras # mostra quantas regras foram geradas
summary(regras)
inspect(regras) 

install.packages("arulesViz") # lib para vizualização das regras
library("arulesViz")
plot(regras, method="graph", control=list(type="items"))
plot(regras, method="matrix", control=list(type="items"))

plot(regras, method="matrix3D", measure="lift", control=list(reorder=TRUE))
plot(regras, method="grouped")