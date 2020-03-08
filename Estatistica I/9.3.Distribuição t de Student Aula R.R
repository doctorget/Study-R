#Formacao Cientista de Dados

# Media 75 amostra 9 e dp 10 
# qual a prob do salario de um data ser menor que 80
# < 80 consulta na tabela t = 1,5
pt(1.5, 8) # 8 são os graus de liberdade


# mesmo problema só que a prob é maior que
pt(1.5,8,lower.tail=F)