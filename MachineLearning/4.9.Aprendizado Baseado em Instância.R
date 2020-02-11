#Formacao Cientista de Dados - Fernando Amaral

install.packages("class", dependencies=T)
library(class)

head(iris)
summary(iris)

amostra = sample(2,150,replace=T, prob=c(0.7,0.3)) # Separando base treino e a classificar
iristreino = iris[amostra==1,]
classificar = iris[amostra==2,]

dim(iristreino)
dim(classificar)

previsao = knn(iristreino[,1:4],classificar[,1:4],iristreino[,5],k=3) # O primeiro parametro é a base de treino,2= a base que vai ser classificada
#3= é classe que estão os grupos e o k= pode ser mudado para testar melhora do classificador

table(classificar[,5],previsao) #montando matriz de confusão

(tabela[1] + tabela[5] + tabela[9]) / sum(tabela) 


