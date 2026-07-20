PROCEDURE Main()
   LOCAL nSecreto, nTentativa, nPalpite, cEntrada
   LOCAL lAcertou := .F.
   
   nSecreto := HB_RandomInt(1, 100)
   QOut("Bem-vindo! Tente adivinhar o numero entre 1 e 100.")
   
   FOR nTentativa := 1 TO 7
      QOut("Tentativa " + Str(nTentativa) + " de 7.")
      ACCEPT "Qual e o seu palpite? " TO cEntrada
      nPalpite := Val(cEntrada)
      
      IF nPalpite == nSecreto
         lAcertou := .T.
         EXIT
      ELSEIF nPalpite < nSecreto
         QOut("O numero secreto e MAIOR!")
      ELSE
         QOut("O numero secreto e MENOR!")
      ENDIF
   NEXT
   
   IF lAcertou
      QOut("Parabens! Voce acertou o numero!")
   ELSE
      QOut("Fim de jogo! O numero secreto era: " + Str(nSecreto))
   ENDIF
RETURN