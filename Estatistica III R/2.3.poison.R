#Formacao Cientista de Dados

# Média de acidentes de carro é 2 por dia

# Qual a probabilidade de ocorrerem 3 acidentes no dia?

# media = 2
# x = 3
dpois(3,lambda=2) 

# x <= 3 qual a chance de ocorrer menos que 3 acidentes
ppois(3,lambda=2)

# x > 3 chance de ocorrer mais que 3 acidentes
ppois(3,lambda=2, lower.tail=F)
