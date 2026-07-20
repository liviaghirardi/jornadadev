PROCEDURE Main()
   LOCAL cEntrada, nValor
   
   WHILE .T.
      ACCEPT "Digite um valor inteiro (0 ou negativo para sair): " TO cEntrada
      nValor := Val(cEntrada)
      
      IF nValor <= 0
         EXIT
      ENDIF
      
      QOut("O dobro de " + Str(nValor) + " e " + Str(nValor * 2))
   ENDDO
RETURN