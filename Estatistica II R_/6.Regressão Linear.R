#Formacao Cientista de Dados


dim(cars) # mesma função de dados.shape do python

head(cars) # vizualiza primeiros registros

summary(cars)

cor(cars) # mostra a correlação das colunas

modelo = lm(speed ~ dist, data=cars) # cria o modelo linear
modelo

plot(modelo) # é gerado alguns graficos de disperção

plot(speed ~ dist, data=cars) #
abline(modelo) #faz a linha de melhor ajuste a dispersão dos dados

modelo$coefficients # mostra os coefcientes

# de acordo com a base de carros e milhas por hora
modelo$coefficients[1] + modelo$coefficients[2] * 22 # previsão de quanto do valor 22 baseado na regressão

predict(modelo,data.frame(dist = 22)) # mesmo calculo de cima só que com predict

summary(modelo) # ve as formulas do modelo os quartis e os coeficientes

modelo$coefficients

modelo$ #mostra todas as funções que voce pode usar dentro do seu mmodelo

modelo$residuals # residuais, que é a distancia entre o ponto dos dados e a linha de melhor ajuste
# se tiver abaixo da linha é negativo se tiver acima positivo

modelo$fitted.values # mostra os valores ajustados, que são os usados para criar a linha de melhor ajuste

plot(modelo$fitted.values, cars$dist)# aqui comparamos os valores ajustados com os valores que ja vinheram com a base

mtcars

dim(mtcars)

cor(mtcars[1:4])
modelo = lm(mpg ~ disp, data=mtcars)
modelo

summary(modelo)$r.squared 
summary(modelo)$adj.r.squared

plot(mpg ~ disp, data=mtcars)
abline(modelo)

predict(modelo,data.frame(disp = 200))

modelo = lm(mpg ~ disp +  hp + cyl, data=mtcars)

summary(modelo)$r.squared 

summary(modelo)$adj.r.squared

predict(modelo,data.frame(disp = 200, hp=100, cyl=4))




