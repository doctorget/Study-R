#Formacao Cientista de Dados

novela = matrix(c(19,6,43,32),nrow=2, byrow=T) # construindo uma matriz com duas linhas e colocando valores por linha

rownames(novela) = c("Masculino","Feminino") # Dando nome as linhas 

colnames(novela) = c("Assiste","NaoAssiste") # Dando nome as colunas 

fix(novela) # ver a matriz


chisq.test(novela) # função que calcula o Qui trazendo x-squared e p-value para comparar com o alfa escolhido
# para rejeitar ou não a hipotese nula






