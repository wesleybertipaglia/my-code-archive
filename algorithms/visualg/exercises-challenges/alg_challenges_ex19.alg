Algoritmo "Ex19 - Lista de Desafios"
// Disciplina  :  [Inform�tica e Neg�cios -  L�gica de Programa��o]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descri��o   : Recebe dois valores e verifica qual o maior e o menor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Se��o de Declara��es das vari�veis
   n1, n2, maior, menor: real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   //apresenta o app
   escreval ("Ex19 - Lista de Desafios")
   escreval ("Fun��o: Recebe dois valores e verifica qual o maior e o menor")

   //recebe os valores
   escreva ("Digite o 1� valor: ")
   leia (n1)

   escreva ("Digite o 2� valor: ")
   leia (n2)

   //verifica se os valores s�o iguais
   se n1 = n2 entao
      escreva ("Os valores n�o podem ser iguais, digite novamente: ")
      leia (n2)
   fimse

   escreval //pula linha

   //verifica qual o maior valor
   se n1 > n2 entao
      maior <- n1
      menor <- n2
   senao
      maior <- n2
      menor <- n1
   fimse

   //resultado
   escreval ("Maior valor: ", maior)
   escreval ("Menor valor: ", menor)


Fimalgoritmo