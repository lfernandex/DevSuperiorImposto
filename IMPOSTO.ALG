Algoritmo "Imposto"

Var

   // variaveis parte 1
   salarioAnual : real
   servico, capital, medico, educacao : real

   // Variaveis parte 2
   salario, pct1, pct2, pct3, impSalario, impCapital, impServico : real

   // Variaveis parte 3
   gastosDedutiveis, dedutivel, abatimento : real
   impDevido, impBruto2, pctBruto, impBruto1 : real
 

Inicio

   // parte 1
   escreva("Renda anual com salário: ")
   leia(salarioAnual)
   escreva("Renda anual com prestação de serviço: ")
   leia(servico)
   escreva("Renda anual com ganho de capital: ")
   leia(capital)
   escreva("Gastos medicos: ")
   leia(medico)
   escreva("Gastos educacionais: ")
   leia(educacao)

   // parte 2
   salario <- salarioAnual / 12
   
   se salario <= 3000.00 entao
      pct1 <- 0
   senao
      se salario <= 5000.00 entao
         pct1 <- 10
      senao
         pct1 <- 20
      fimse
   fimse
   
   impSalario <- salarioAnual * pct1 / 100

   se servico > 0 entao
      pct2 <- 15
      impServico <- servico * pct2 / 100
   senao
      pct2 <- 0
      impServico <- 0
   fimse

   se capital > 0 entao
      pct3 <- 20
   senao
      pct3 <- 0
   fimse
   
   impCapital <- capital * pct3 / 100

   // parte 3
   
   escreval

   escreval("RELATÓRIO DE IMPOSTO DE RENDA")
   escreval
   
   escreval("CONSOLIDADO DE RENDA:")
   escreval("Imposto sobre salário:", impSalario:8:2)
   escreval("Imposto sobre serviços:", impServico:8:2)
   escreval("Imposto sobre ganho de capital:", impCapital:8:2)

   impBruto1 <- impSalario + impServico + impCapital

    impBruto2 <- impBruto1 * 30 / 100

   gastosDedutiveis <- medico + educacao
   
   escreval
   escreval("DEDUÇÕES:")
   escreval("Maximo dedutivel: ", impBruto2:8:2)
   escreval("Gastos dedutível:", gastosDedutiveis:8:2)

   escreval
   escreval("RESUMO:")
   escreval("Imposto bruto total: ", impBruto1:8:2)
   
   se gastosDedutiveis < impBruto2 entao
      escreval("Abatimento: ", gastosDedutiveis:8:2)
   senao
      escreval("Abatimento: ", impBruto2:8:2)
   fimse
   

   se gastosDedutiveis < impBruto2 entao
      impDevido <- impBruto1 - gastosDedutiveis
      escreval("Imposto devido: ", impDevido:8:2)
   senao
      impDevido <- impBruto1 - impBruto2
      escreval("Imposto devido: ", impDevido:8:2)
   fimse
   
Fimalgoritmo