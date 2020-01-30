#Formacao Cientista de Dados

boxplot(iris$Sepal.Width)

boxplot(iris$Sepal.Width, outline = F) # plotando sem outlier

boxplot.stats(iris$Sepal.Width)$out # aqui ele vai printar somente os outliers

install.packages('outliers') # pacote só com analise e remoção de outliers

library(outliers) # importando o pacote

outlier(iris$Sepal.Width) # Trás os ou o outlier/s superiores

outlier(iris$Sepal.Width, opposite=T) # Trás os inferiores
