programa {
  funcao inicio() {

    inteiro opcao
    real saldo = 0, deposito, saque

    faca{
      escreva("Escolha uma das opções:" ,
      "\n(1)Deposito" ,
      "\n(2)Saque" ,
      "\n(3)Saldo" ,
      "\n(4)Sair\n")
      leia(opcao)

      escolha(opcao){
        caso 1 :
        escreva("\nDigite o valor do deposito: R$ \n")
        leia(deposito)

        escreva("\nSaldo Atual: R$" , (saldo + deposito) , "\n")

        saldo = saldo + deposito

        escreva("-----------------------------\n")

        pare

        caso 2 :
        escreva("\nDigite o valor do saque: \n")
        leia(saque)


        se(saque < deposito){
          escreva("\nValor do saque: R$ " , saque , " Saldo Atual: R$ " , (saldo - saque) , "\n")
        }senao{
          escreva("\nSALDO INSUFICIENTE!\n")
        }

        saldo = saldo - saque

        escreva("-----------------------------\n")

        pare

        caso 3 :
        escreva("\nSaldo Atual: R$ " , saldo , "\n")

        escreva("-----------------------------\n")

        caso-contrario 
        escreva("\nDigite uma opção válida!\n")

        escreva("-----------------------------\n")

      }
    }enquanto(opcao == 1 ou opcao == 2 ou opcao == 3)

    faca{
      escreva("Sistema Finalizado!")
    }enquanto(opcao == 4)
  }
}