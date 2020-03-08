#Formacao Cientista de Dados
# X - media / desvio-padrão = formula probabilidade

# uma caixa de pesos 
# qual a probabilidade de tirar um peso com menos de 6 quilos
# objeto < 6, media = 8, d-p = 2 
pnorm(6,8,2)


# qual a probabilidade de tirar um peso com mais de 6 quilos
# objeto > 6, media = 8, d-p = 2 
pnorm(6,8,2, lower.tail=F) # lower.tail=F é atributo que faz uma operação "mais que" probabilidade

# qual a probabilidade de tirar um peso com menos de 6 quilos e mais de 10 quilos
# objeto < 6 e objeto > 10, media = 8, d-p = 2 
pnorm(6,8,2) + pnorm(10,8,2, lower.tail=F)

# qual a probabilidade de tirar um peso com menos de 10 quilos e mais de 8 quilos
pnorm(10,8,2) - pnorm(8,8,2, lower.tail=F)
1 - ( pnorm(8,8,2) + pnorm(10,8,2, lower.tail=F))

x = rnorm(100) # gera dados que estão normalmente distribuidos
qqnorm(x) # gera grafico de dispersão, pra verificar distribuição dos dados
qqline(x) # gera uma linha no grafico de dispersão
shapiro.test(x) # gera um numero de p-value pra comparar com o alpha