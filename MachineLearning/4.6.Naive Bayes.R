#Formacao Cientista de Dados

library(e1071)

credito = read.csv(file.choose(),sep=',',header=T)
head(credito)
dim(credito)
amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))# Tirando amostra com 70% 1 e 30% 2
amostra
creditotreino = credito[amostra==1,] # separando a amostra de treino
creditoteste = credito[amostra==2,] # separando a amostra de teste

dim(creditotreino)
dim(creditoteste)

modelo <- naiveBayes(class ~., creditotreino) # criação do modelo passando a variavel de saido e a base de treino 

predicao <- predict(modelo,creditoteste) # Aqui é feito a predição do modelo gerando um array com as previsões fazendo uma predição pra cada linha 

predicao

confusao = table(creditoteste$class,predicao) # Aqui geramos a matriz de confusão pra saber os falsos positivos e negativos

taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)#aqui fazemos a formula da taxa de acerto com base na matriz de confusão

taxaerro = (confusao[2] + confusao[3]) / sum(confusao)#e aqui a taxa de erro com a mesma base


