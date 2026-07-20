PROCEDURE Main()
   LOCAL cVal1, cVal2, cOp
   LOCAL nA, nB, nResultado

   ACCEPT "Valor A: " TO cVal1
   nA := Val(cVal1)
   
   ACCEPT "Operacao (+, -, *, /, ^, R): " TO cOp
   
   IF Upper(cOp) != "R"
      ACCEPT "Valor B: " TO cVal2
      nB := Val(cVal2)
   ENDIF

   DO CASE
      CASE cOp == "+"
         nResultado := nA + nB
         QOut("Resultado: " + Str(nResultado))
      CASE cOp == "-"
         nResultado := nA - nB
         QOut("Resultado: " + Str(nResultado))
      CASE cOp == "*"
         nResultado := nA * nB
         QOut("Resultado: " + Str(nResultado))
      CASE cOp == "/"
         IF nB == 0
            QOut("Erro: Divisao por zero!")
         ELSE
            nResultado := nA / nB
            QOut("Resultado: " + Str(nResultado))
         ENDIF
      CASE cOp == "^"
         nResultado := nA ^ nB
         QOut("Resultado: " + Str(nResultado))
      CASE Upper(cOp) == "R"
         nResultado := Sqrt(nA)
         QOut("Raiz Quadrada de A: " + Str(nResultado))
      OTHERWISE
         QOut("Erro: Operacao invalida!")
   ENDCASE
RETURN