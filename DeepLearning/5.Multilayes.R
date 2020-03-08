#Formacao Cientista de Dados - Fernando Amaral
#install.packages("neuralnet")
library(neuralnet)

myiris = iris

myiris = cbind(myiris,myiris$Species=='setosa') # criando uma coluna se for igual a setosa true se não false
myiris = cbind(myiris,myiris$Species=='versicolor') #
myiris = cbind(myiris,myiris$Species=='virginica')

names(myiris)[6] <- 'setosa' # criando nova coluna
names(myiris)[7] <- 'versicolor'
names(myiris)[8] <- 'virginica'

summary(myiris)

#install.packages("caret", dependencies=T)
library(caret)

#particao
particao = createDataPartition(1:dim(myiris)[1],p=.7)
iristreino = myiris[particao$Resample1,]
iristeste = myiris[- particao$Resample1,]
dim(iristreino)
dim(iristeste)

modelo = neuralnet( setosa  + versicolor  +  virginica  ~ Sepal.Length + Sepal.Width +  Petal.Length + Petal.Width , iristreino, hidden=c(5,4)) # o atributo hidden é passado quantos neuronios nas camadas

print(modelo) # mostrando variaveis do modelo
plot(modelo) # plotando redes neurais criadas

teste = compute(modelo,iristeste[,1:4]) # testando modelo

teste$net.result

resultado = as.data.frame(teste$net.result)# criando dataframe com o resultado da rede neural

names(resultado)[1] <- 'setosa' # nomeando as colunas 
names(resultado)[2] <- 'versicolor'
names(resultado)[3] <- 'virginica'

resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method = 'first')] #criando uma nova coluna que recebe o nome da coluna com maior valor

confusao = table(resultado$class,iristeste$Species)
confusao

sum(diag(confusao) * 100 / sum(confusao)) # accuracia do modelo



















