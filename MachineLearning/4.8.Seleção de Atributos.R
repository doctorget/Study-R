#Formacao Cientista de Dados

modelo <- svm(class ~., creditotreino) # Vai ser usado todas as variaveis pra explicar a classe
predicao <- predict(modelo,creditoteste)
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto


install.packages("FSelector", dependencies=T)
library(FSelector )
#vericando atributos relevantes
random.forest.importance(class~.,credito)

modelo = svm(class ~ checking_status + duration + credit_history + purpose  ,creditotreino) # treinando com algumas variaveis relevantes pela função
predicao = predict(modelo,creditoteste)
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)
taxaacerto


chi.squared(Classe~.,matriculas)
information.gain(Classe~.,matriculas)

checking_status