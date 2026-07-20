PROCEDURE Main()
   LOCAL cNome, cDisc, cEntrada
   LOCAL nNota1, nNota2, nMedia
   
   // Validação do Nome
   WHILE .T.
      ACCEPT "Nome do aluno: " TO cNome
      IF Len(Trim(cNome)) > 0
         EXIT
      ENDIF
      QOut("Erro: Nome nao pode ser vazio.")
   ENDDO
   
   // Validação da Disciplina
   WHILE .T.
      ACCEPT "Disciplina (3 letras maiusculas): " TO cDisc
      IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
         EXIT
      ENDIF
      QOut("Erro: Formato invalido.")
   ENDDO
   
   // Validação da Nota 1
   WHILE .T.
      ACCEPT "Nota 1 (0 a 10): " TO cEntrada
      nNota1 := Val(cEntrada)
      IF nNota1 >= 0 .AND. nNota1 <= 10
         EXIT
      ENDIF
      QOut("Erro: Nota invalida.")
   ENDDO
   
   // Validação da Nota 2
   WHILE .T.
      ACCEPT "Nota 2 (0 a 10): " TO cEntrada
      nNota2 := Val(cEntrada)
      IF nNota2 >= 0 .AND. nNota2 <= 10
         EXIT
      ENDIF
      QOut("Erro: Nota invalida.")
   ENDDO
   
   nMedia := (nNota1 + nNota2) / 2
   
   QOut("--- RESUMO ---")
   QOut("Aluno: " + cNome)
   QOut("Disciplina: " + cDisc)
   QOut("Media: " + Str(nMedia, 10, 2))
RETURN