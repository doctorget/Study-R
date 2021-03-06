#Formacao Cientista de Dados

AirPassengers

start(AirPassengers) # data de inicio da serie
end(AirPassengers) # data fim da serie

frequency(AirPassengers)

plot(AirPassengers)
plot(aggregate(AirPassengers)) # diminui efeito sazonal
monthplot(AirPassengers) # faz uma agregação dos dados por mês

subst = window(AirPassengers,start=c(1960,1), end=c(1960,12)) # Aqui vemos o grafico do ano de 1960
subst
plot(subst)

dec = decompose(AirPassengers) ''' a função decompõe a base mostrando todos os dados originais, elementos de sazionalidade
tendencia, e o elemento aleatorio'''
dec

attributes(dec)

dec$seasonal # mostra somente os elementos sazionais

plot(dec$trend) #plota um grafico só com as tendencias  
plot(dec) # plota um grafico com todos os elementos 

mean(AirPassengers) # media dos valores
window(AirPassengers,start=c(1997,12), end=c(1997,12))
mean(window(AirPassengers,start=c(1997,1), end=c(1997,12))) # média dos valores do ultimo ano

install.packages(“forecast”)
library(forecast)

mediamovel = ma(AirPassengers,order=12) # vai calcular suavizando a linha do grafico calculando a média de cada mês

previsao = forecast(mediamovel, h=12) # faz uma previsão futura

arima = auto.arima(AirPassengers) # aqui elle faz uma copia da base e aplica o arima uma previsão mais sofisticada
arima

previsao = forecast(arima, h=5) # aqui ele preve a base com arima 

plot(previsão)



