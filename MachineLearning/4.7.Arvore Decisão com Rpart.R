#Formacao Cientista de Dados

install.packages('rpart',dependencies=T)
library(rpart)

credito = read.csv(file.choose(),sep=',',header=T)

amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))

amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))

creditotreino = credito[amostra==1,] # Amostra de treino
creditoteste = credito[amostra==2,] # Amostra de teste

arvore = rpart(class ~ ., data=creditotreino,  method="class") # treinando modelo

print(arvore) # estrtura da arvore 

plot(arvore)
text(arvore, use.n=TRUE, all=TRUE, cex=.8) # colocando informações das folhas

teste = predict(arvore,newdata=creditoteste) # testando o modelo com os dados de teste

teste

cred = cbind(creditoteste,teste) #cbind vai adicionar uma nova coluna a tabela

fix(cred)

cred['Result'] = ifelse(cred$bad>=0.5,"bad","good") # if condicional parar prencher coluna de acordo com valor
fix(cred)

confusao = table(cred$class,cred$Result)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)
taxaerro



