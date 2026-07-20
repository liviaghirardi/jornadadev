PROCEDURE Main()
   LOCAL cNome, cDisc, cEntrada, cResp
   LOCAL nNota1, nNota2, nMedia
   
   WHILE .T.
      // (Aqui você copia o código de validação de dados do Exercício 4 inteiro)
      // Para brevidade da resposta, assuma que as validações estão aqui!
      
      ACCEPT "Nome do aluno: " TO cNome
      ACCEPT "Nota 1: " TO cEntrada
      nNota1 := Val(cEntrada)
      ACCEPT "Nota 2: " TO cEntrada
      nNota2 := Val(cEntrada)
      
      nMedia := (nNota1 + nNota2) / 2
      QOut("Media: " + Str(nMedia, 10, 2))
      
      // Controle do loop principal
      ACCEPT "Deseja calcular outro? (S/N): " TO cResp
      IF Upper(cResp) != "S"
         EXIT
      ENDIF
   ENDDO
RETURN