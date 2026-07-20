PROCEDURE Main()
   LOCAL cEntrada1, cEntrada2
   LOCAL nValor1, nValor2

   ACCEPT "Digite o primeiro valor: " TO cEntrada1
   ACCEPT "Digite o segundo valor: " TO cEntrada2

   nValor1 := Val(cEntrada1)
   nValor2 := Val(cEntrada2)

   IF nValor1 == nValor2
      QOut("Os valores sao iguais!")
   ELSEIF nValor1 > nValor2
      QOut("O maior valor e: " + Str(nValor1))
      QOut("O menor valor e: " + Str(nValor2))
   ELSE
      QOut("O maior valor e: " + Str(nValor2))
      QOut("O menor valor e: " + Str(nValor1))
   ENDIF
RETURN