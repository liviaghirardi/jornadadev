PROCEDURE Main()
   LOCAL aAlunos := {}
   LOCAL cEntrada, nQtd, nI
   LOCAL cNome, n1, n2, n3, n4, nMedia

   ACCEPT "Quantos alunos queres registar? " TO cEntrada
   nQtd := Val(cEntrada)

   // Ler dados e preencher o array multidimensional
   FOR nI := 1 TO nQtd
      ACCEPT "Nome do aluno " + Str(nI, 2) + ": " TO cNome
      ACCEPT "Nota 1: " TO cEntrada; n1 := Val(cEntrada)
      ACCEPT "Nota 2: " TO cEntrada; n2 := Val(cEntrada)
      ACCEPT "Nota 3: " TO cEntrada; n3 := Val(cEntrada)
      ACCEPT "Nota 4: " TO cEntrada; n4 := Val(cEntrada)
      
      AADD(aAlunos, {cNome, n1, n2, n3, n4})
   NEXT

   QOut("")
   QOut("--- APROVADOS (Media >= 7) ---")
   FOR nI := 1 TO Len(aAlunos)
      nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
      IF nMedia >= 7
         QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia, 5, 2))
      ENDIF
   NEXT

   QOut("")
   QOut("--- REPROVADOS ---")
   FOR nI := 1 TO Len(aAlunos)
      nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
      IF nMedia < 7
         QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia, 5, 2))
      ENDIF
   NEXT
RETURN