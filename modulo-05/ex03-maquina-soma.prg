PROCEDURE Main()
   LOCAL cEntrada, nValor
   LOCAL nTotal := 0, nQtd := 0
   
   WHILE .T.
      ACCEPT "Digite um valor (0 para finalizar): " TO cEntrada
      nValor := Val(cEntrada)
      
      IF nValor == 0
         EXIT
      ENDIF
      
      nTotal += nValor
      nQtd++
   ENDDO
   
   QOut("Soma total: " + Str(nTotal))
   QOut("Quantidade de valores: " + Str(nQtd))
RETURN