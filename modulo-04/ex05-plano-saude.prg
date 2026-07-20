PROCEDURE Main()
   LOCAL cIdade, cDep
   LOCAL nIdade, nDep, nMensalidade := 0, nTotal
   
   ACCEPT "Idade do titular: " TO cIdade
   ACCEPT "Numero de dependentes: " TO cDep
   
   nIdade := Val(cIdade)
   nDep := Val(cDep)
   
   IF nIdade <= 25
      nMensalidade := 180
   ELSEIF nIdade <= 40
      nMensalidade := 260
   ELSEIF nIdade <= 60
      nMensalidade := 380
   ELSE
      nMensalidade := 520
   ENDIF
   
   nTotal := nMensalidade + (nDep * 90)
   QOut("Valor mensal total: R$ " + Str(nTotal, 10, 2))
RETURN