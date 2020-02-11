#Formacao Cientista de Dados - Fernando Amaral

install.packages('randomForest',dependencies=T)
library(randomForest)
credito = read.csv(file.choose(),sep=',',header=T)
head(credito)

amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = creditos[amostra==2,]

floresta = randomForest(class ~ .,data=creditotreino, ntree=100,importance=T)#Treinando modelo, ntree=numero de arvores que serão induzidas

varImpPlot(floresta) # plota dois graficos, o primeiro é aImportancia de cada atributo pro  modelo e o segundo usa o calculo de gini 

previsao = predict(floresta,creditoteste)
confusao = table(previsao,creditoteste$class)
confusao
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)


