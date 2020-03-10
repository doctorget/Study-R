#install.packages("mongolite") 
library(mongolite)


conexao = mongo(collection = "posts", db = "dbmidias", url = "mongodb://localhost")

dados = conexao$find()
class(dados)

dados = conexao$find('{"nome":"José"}')




