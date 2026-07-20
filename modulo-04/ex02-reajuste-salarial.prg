PROCEDURE Main()
   LOCAL cEntrada
   LOCAL nSalarioAtual, nNovoSalario, nReajuste

   ACCEPT "Digite o salario atual: " TO cEntrada
   nSalarioAtual := Val(cEntrada)

   IF nSalarioAtual < 1000
      nReajuste := 0.15
   ELSEIF nSalarioAtual <= 2000
      nReajuste := 0.12
   ELSEIF nSalarioAtual <= 4000
      nReajuste := 0.08
   ELSE
      nReajuste := 0.05
   ENDIF

   nNovoSalario := nSalarioAtual + (nSalarioAtual * nReajuste)
   QOut("Novo salario: " + Str(nNovoSalario, 10, 2))
RETURN