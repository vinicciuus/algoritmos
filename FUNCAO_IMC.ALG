Algoritmo "FUNCAO_IMC"

Var
funcao calcular_imc() : real //declara

var
  peso, altura: real
inicio
  escreval("Qual sua altura")
  leia(altura)
  escreval("Qual seu peso")
  leia(peso)
  retorne peso / (altura*altura)
fimfuncao

Inicio
  escreval("Seu IMC �: ",calcular_imc())
Fimalgoritmo