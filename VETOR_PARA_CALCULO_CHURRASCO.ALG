Algoritmo "VETOR_PARA_CALCULO_CHURRASCO"

Var
   item : vetor [1..5] de caracter
   itemQuantidade : vetor [1..5] de inteiro
   itemValorUnitario : vetor[1..5] de real
   itemValorTotal : vetor[1..5] de real

   custoTotalChurrasco : real
   custoPessoa : real

   quantidadePessoa: inteiro
   i : inteiro
Inicio
   para i de 1 ate 5 faca
      escreval("Item",i," de 5")
      escreva("Fale o nome do item: ")
      leia(item[i])

      escreva("Informe a quantidade desse item: ")
      leia(itemQuantidade[i])

      escreva("Informe o valor unit�rio desse item: ")
      leia(itemValorUnitario[i])

      itemValorTotal[i] <- itemQuantidade[i] * itemValorUnitario[i]
      custoTotalChurrasco <- custoTotalChurrasco + itemValorTotal[i]
      limpatela()
   fimpara

   escreval("ITENS ADICIONADOS")
   para i de 1 ate 5 faca
      escreval("Item:",item[i],"  Quantidade:",itemQuantidade[i],"  pre�o/item:R$",itemValorUnitario[i],"  Total:R$",itemValorTotal[i])
   fimpara
   escreval("")
   escreval("Valor total do churrasco: R$",custoTotalChurrasco)
   escreva("Quantas pessoas v�o participar do churrasco: ")
   leia(quantidadePessoa)

   custoPessoa <- custoTotalChurrasco / quantidadePessoa
   escreval()
   escreval("O pre�o que cada pessoa pagar� no churrasco � R$",custoPessoa:2)
Fimalgoritmo