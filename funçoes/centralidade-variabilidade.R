jogadores = c(40000,18000,12000,250000,30000,140000,300000,40000,800000)

mean(jogadores) # media

median(jogadores) # mediana

quartis = quantile(jogadores)
quartis

quartis[4] # tras o valor de 75%

sd(jogadores) # desvio padrao

summary(jogadores)
