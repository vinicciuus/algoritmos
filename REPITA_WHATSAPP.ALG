Algoritmo "repita_whatsapp"

Var//declarando as vari�veis

   formaPagamento, escolhaPedido, escolhaMenu, produtosAdicionados, fezPedido: inteiro
   taxaEntrega, valorPedido, valorTotal, troco, dinheiro, precisaTroco: real
   mensagemFinalizarMenu:caracter
Inicio
   //Essa vari�vel limita a quantidade de pedidos que podem ser feitos pelo
   //usu�rio. Apenas 1 por execu��o do programa
   fezPedido <- 0

   //Op��o do menu que aparecer� at�
   mensagemFinalizarMenu <- " Ir para o menu"

   //la�o de repeti��o do tipo 'repita' ocorrer� at� o usu�rio decidir
   //sair do programa. At� a op��o escolhaMenu ser igual a 0
   repita
      escreval()
      escreval("SEJA BEM-VINDO(A) AO LOS POLLOS HERMANOS")
      escreval(" [1] - Realizar pedido")
      escreval(" [2] - Mostrar card�pio")
      escreval(" [3] - Acompanhar pedido")
      escreval(" [0] - Sair do atendimento")
      escreva("Sua op��o:")
      leia(escolhaMenu)

      se(escolhaMenu = 1)entao
         limpatela()

         //Se o cliente n�o fez/finalizou seu pedido, a condi��o abaixo
         //ir� ocorrer e o mesmo pooder� criar o seu pedido
         se(fezPedido = 0)entao

            //A repeti��o abaixo vai rolar at� o usu�rio finalizar o pedido ou voltar para o menu
            repita
               escreval("PARA REALIZAR O PEDIDO: Informe o n�mero")
               escreval("dos itens desejados um por vez.")
               escreval(" [0] - Mostrar o card�pio")
               escreval(" [99] -",mensagemFinalizarMenu)
               escreval("")
               escreval("Produtos adicionados: ",produtosAdicionados)
               escreval("sub-total R$:",valorPedido)
               escreva("N�mero do pedido:")
               leia(escolhaPedido) //op��o que o usu�iro escolher

               //adiciona os valores dos lanches/bebidas ao valor do pedido
               se(escolhaPedido = 1)entao
                  valorPedido <- valorPedido + 22
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 2)entao
                  valorPedido <- valorPedido + 18
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 3)entao
                  valorPedido <- valorPedido + 26
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 4)entao
                  valorPedido <- valorPedido + 11
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(escolhaPedido = 5)entao
                  valorPedido <- valorPedido + 5.5
                  produtosAdicionados <- produtosAdicionados + 1
                  limpatela()
               fimse
               se(produtosAdicionados >= 1)entao
                  mensagemFinalizarMenu <- " Finalizar pedido"
               fimse

               se (escolhaPedido = 0)entao //exibe o menu para o usu�rio
                  limpatela()
                  escreval("CARD�PIO")
                  escreval(" [1] X-BACON - R$:22,00")
                  escreval(" [2] X-SALADA - R$:18,00")
                  escreval(" [3] X-TUDO - R$:26,00")
                  escreval(" [4] CocaCola 2L - R$:11,00")
                  escreval(" [5] CocaCola 600ml - R$:5,50")
                  escreval()
               senao //caso o usu�rio n�o digite nenhuma das op��es existentes,
                  //o terminal ser� limpo, evitando informa��es desnecess�rias
                  limpatela()
               fimse
            ate (escolhaPedido = 99)
            limpatela() //ap�s o pedido ser finalizado ou o usu�rio voltar ao menu, o terminal � limpo

            //Caso algum produto j� tenha sido adicionado,
            //o algoritmo interpreta que o pedido foi conclu�do
            se(produtosAdicionados >= 1)entao
               escreval(" PEDIDO FEITO COM SUCESSO")
               fezPedido <- 1 //nao deixar� o usu�rio criar um novo pedido
            fimse

         senao //caso a vari�vel fezPedido for diferente de 0...
            limpatela()
            escreval(" VOC� J� REALIZOU O SEU PEDIDO.")
         fimse
      fimse

      se(escolhaMenu = 2)entao //Mostra o card�pio para o usu�rio
         limpatela()
         escreval("CARD�PIO")
         escreval(" [1] X-BACON - R$:22,00")
         escreval(" [2] X-SALADA - R$:18,00")
         escreval(" [3] X-TUDO - R$:26,00")
         escreval(" [4] CocaCola 2L - R$:11,00")
         escreval(" [5] CocaCola 600ml - R$:5,50")
      fimse

      se(escolhaMenu = 3) entao  //Acompanha/mostra o status do pedido
         limpatela()

         se(fezPedido = 1)entao //caso o pedido j� tenha sido realizado
            taxaEntrega <- valorPedido * 0.1 //c�lculo da taxa de entrega
            valorTotal <- valorPedido + taxaEntrega //c�lculo do valor total

            //Mostra as informa��es do pedido no terminal
            escreval("Total de itens adicionados:",produtosAdicionados)
            escreval("Sub-total R$:",valorPedido)
            escreval("Tarifa de entrega R$:",taxaEntrega)
            escreval("Valor total do pedido R$:",valorTotal)
            escreval("")

            repita //'for�a' o usu�rio a selecionar uma forma de pagamento
               escreval("FORMAS DE PAGAMENTO")
               escreval(" [1] - Dinheiro")
               escreval(" [2] - Cart�o")
               escreval(" [3] - Pix")
               escreva("Sua forma de pagamento:")
               leia(formaPagamento) //armazena a op��o de pagamento do usu�rio
               
               //limpa a tela se a op��o n�o for uma existente
               se (formaPagamento < 1) ou (formaPagamento > 3)entao
                  limpatela()
               fimse
            ate (formaPagamento > 0)e(formaPagamento < 4)//fim do la�o repita

            se(formaPagamento = 1)entao
               limpatela()
               repita //'for�a' o usu�rio a selecionar uma op��o v�lida
                  escreval("Precisa de troco?")
                  escreval(" [1] - Preciso")
                  escreval(" [0] - N�o preciso")
                  escreva("Sua op��o: ")
                  leia(precisaTroco)
                  se(precisaTroco < 0)ou(precisaTroco > 1)entao
                     limpatela()
                  fimse
               ate (precisaTroco > -1) e (precisaTroco < 2)//fim da repeti��o

               //caso o usu�rio precise de troco, um sistema para calcular
               //o troco do mesmo ir� rodar
               se (precisaTroco = 1) entao
                  escreval("Quanto voce tem em dinheiro: ")
                  leia(dinheiro)
                  enquanto dinheiro < valorTotal faca //quando o dinheiro for insuficiente
                     limpatela()
                     escreval("SEU DINHEIRO N�O � SUFICIENTE PARA")
                     escreval("PAGAR O PEDIDO, ARRUME MAIS.")
                     escreval()
                     escreval("Quanto voc� tem em dinheiro: ")
                     leia(dinheiro)
                  fimenquanto
                  
                  troco <- dinheiro - valorTotal  //calculo do troco
                  limpatela()
                  escreval("Nosso entregador ir� levar o seu troco que � de R$:",troco)
                  escreval("junto com o seu pedido, quando estiver pronto.")
               senao //caso o cliente n�o precise de troco...
                  escreval()
                  escreval("Quando estiver pronto, nosso entregador levar� seu pedido.")
               fimse
            fimse

            se(formaPagamento = 2)entao //se a forma de pagamento for cart�o...
               limpatela()
               escreval("Quando estiver pronto, nosso entregador levar�")
               escreval("seu pedido e a maquina de cart�o.")
            fimse

            se(formaPagamento = 3)entao //se a forma de pagamento for PIX...
               limpatela()
               escreval("Chave pix: 222320001-2")
               escreval("use ela para efetuar o pagamento no valor de R$:",valorTotal)
               escreval("Quando estiver pronto, nosso entregador levar� seu pedido.")
            fimse

         senao //caso o usu�rio ainda n�o tenha efetuado o pedido
            escreval(" VOC� AINDA N�O REALIZOU O SEU PEDIDO!")
            escreval(" VOLTE AQUI AP�S REALIZ�-LO")
         fimse
      fimse
      //caso o usu�rio digite uma op��o inv�lida, o terminal � limpo
      se(escolhaMenu < 0) ou (escolhaMenu > 3)entao
         limpatela()
      fimse

   ate (escolhaMenu = 0)
   //Ap�s a condi��o do repita for correspondida e sua repeti��o terminar,
   //uma �ltima intera��o com o usu�rio ocorrer� antes do programa encerrar
   escreval("VOLTE SEMPRE AO LOS POLLOS HERMANOS")
Fimalgoritmo