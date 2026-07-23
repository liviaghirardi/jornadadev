PROCEDURE Main()
   LOCAL aNumeros := {8, 3, 9, 1, 5, 7, 2, 6, 4}
   LOCAL nI
   
   QOut("Array desordenado:")
   FOR nI := 1 TO Len(aNumeros); QQOut(Str(aNumeros[nI], 3)); NEXT
   QOut("")
   
   BubbleSort(aNumeros)
   
   QOut("Array ordenado (Bubble Sort):")
   FOR nI := 1 TO Len(aNumeros); QQOut(Str(aNumeros[nI], 3)); NEXT
   QOut("")
RETURN

PROCEDURE BubbleSort(aVetor)
   LOCAL nI, nJ, nTemp, nTamanho
   nTamanho := Len(aVetor)
   
   FOR nI := 1 TO nTamanho - 1
      FOR nJ := 1 TO nTamanho - nI
         IF aVetor[nJ] > aVetor[nJ + 1]
            // Troca os elementos de lugar se estiverem na ordem errada
            nTemp := aVetor[nJ]
            aVetor[nJ] := aVetor[nJ + 1]
            aVetor[nJ + 1] := nTemp
         ENDIF
      NEXT
   NEXT
RETURN