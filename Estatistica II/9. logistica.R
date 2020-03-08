#Formacao Cientista de Dados

eleicao = read.csv(file.choose(),sep=';',header=T) #Abrindo base

plot(eleicao$DESPESAS,eleicao$SITUACAO) #comparando duas variaveis

summary(eleicao)

cor(eleicao$DESPESAS,eleicao$SITUACAO) # verificando se existe uma correlação entre as despesas e a candidatura

modelo = glm(SITUACAO~DESPESAS,data=eleicao,family="binomial") # glm gera outro tipo de modelo que pode ser passado por parametro
# neste caso é para umadistribuição binomial

summary(modelo)

plot(eleicao$DESPESAS,eleicao$SITUACAO,col='red',pch=20) # mesmo grafico só mudando a cor dos pontos 

points(eleicao$DESPESAS, modelo$fitted, pch=4) # grafico mostrando a pontos ajustado pelo modelo mostrando a probabilidade de ser eleito baseado no investimento

prevereleicao = read.csv(file.choose(),sep=';',header=T)

prevereleicao$RESULT = predict(modelo,newdata=prevereleicao,type="response") # prevendo proxima eleição baseado nos dados de novos candidatos e seu investimento
prevereleicao$RESULT

fix(prevereleicao$RESULT) # coloca os dados em uma table melhorando vizualização

predic(modelo, as.data.frame(DESPESAS = 1000))