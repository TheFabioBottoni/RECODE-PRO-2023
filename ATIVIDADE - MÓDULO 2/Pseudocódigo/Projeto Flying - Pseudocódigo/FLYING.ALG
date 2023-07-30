algoritmo "FLYING"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

// Go To - Agência de Viagens! Pensou em Viajar?!
// A Go To Viagens te leva até aonde você quer chegar!!

// O programa permite realizar ATÉ 05 cadastros. Att, Giovane Souza.

var

   nomes: vetor[0..9] de caractere
   destino: vetor[0..9] de caractere
   op, nome: caractere
   i, a, b: inteiro


procedimento inicializa()

inicio

   enquanto op <> "3" faca

      escreval("--->> \o/ BEM VINDO A FLYING ! \o/ <<---")
      escreval()
      escreval("--------------------------------------------")
      escreval("-----------------|MENU|---------------------")
      escreval("--------------------------------------------")
      escreval()
      escreval("(DIGITO 1) CADASTRAR CLIENTE")
      escreval("(DIGITO 2) BUSCAR CLIENTE")
      escreval("(DIGITO 3) SAIR")
      escreval()

      escreva("OPÇÃO: ")
      leia(op)

      se op="1" entao
         limpatela


         cadastrar_cliente()
      fimse


      se op="2" entao
         limpatela

         buscar_cliente()
      fimse



      se op="3" entao

         para i de 0 ate 4 faca
            nomes[i] <- "x"
         fimpara
         limpatela

         escreval(" FLYING - VOLTE SEMPRE! ")

      fimse
   fimenquanto

fimprocedimento

procedimento cadastrar_cliente()

inicio

   para i de 0 ate 4 faca

      se (nomes[i]="") entao

         escreval(" DIGITE OS DADOS DO CLIENTE: ")
         escreval()

         escreva(" NOME: ")
         leia(nomes[i])


         escreva(" DESTINO: ")
         leia(destino[i])

         escreval()

         voltar_menu()

         b <- b + 1

         limpatela
      fimse
   fimpara

   escreval("---->> NÃO HÁ VAGAS NO MOMENTO! <<----")
   escreval()

fimprocedimento

procedimento voltar_menu()

inicio

   escreva("VOLTAR AO MENU INICIAL? (s/n) ")
   leia(op)

   se op="s" entao

      i <- i + 1

      limpatela

      inicializa()

   senao
      limpatela

      cadastrar_cliente()
   fimse
fimprocedimento


procedimento buscar_cliente()

inicio

   a <- 0

   escreval("PARA BUSCAR UM CADASTRO...")
   escreval()

   escreva("DIGITE O NOME DO CLIENTE: ")
   leia(nome)
   escreval()

   para i de 0 ate 4 faca

      se (nome=nomes[i]) entao

         escreval("NOME: ", nomes[i])
         escreval("DESTINO: ", destino[i])
         escreval()

         a <- a + 1

      fimse
   fimpara

   se (a = 0) entao

      escreval("CLIENTE NÃO CADASTRADO!")
      escreval()

   fimse

   Voltar_menu2()

   limpatela

fimprocedimento

procedimento voltar_menu2()

inicio

   Escreva("VOLTAR AO MENU INICIAL? (s/n) ")
   leia(op)


   se op="s" entao
      limpatela
      inicializa()

   senao
      limpatela
      buscar_cliente()
   fimse
fimprocedimento

inicio

   inicializa()

fimalgoritmo