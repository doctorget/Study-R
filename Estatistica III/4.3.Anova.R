#Formacao Cientista de Dados - Fernando Amaral

tratamento = read.csv(file.choose(), sep=";", header=T) # importando base
fix(tratamento) # vendo a tabela como esta distribuida

boxplot(tratamento$Horas ~ tratamento$Remedio) # Boxplot para analisar a variação dos dados

an =  aov(Horas ~ Remedio, data=tratamento) # chamando a função da anova

summary(an) # analisando resultado no anova
 
an =  aov(Horas ~ Remedio * Sexo, data=tratamento) # analisando a variançia de dois fatores

tukey = TukeyHSD(an) # a analise de tukey para analisar a diferença entre os diferentes remedios

plot(tukey) # vendo a comparação das categorias no grafico







