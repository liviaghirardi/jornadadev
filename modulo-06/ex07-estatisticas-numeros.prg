PROCEDURE Main()
   LOCAL aNumeros := {}
   LOCAL nI, cEntrada, nSoma := 0
   
   // Lendo os 10 números
   FOR nI := 1 TO 10
      ACCEPT "Digite o numero " + Str(nI, 2) + ": " TO cEntrada
      AADD(aNumeros, Val(cEntrada))
      nSoma += aNumeros[nI]
   NEXT
   
   // Ordenando o array de forma crescente
   ASORT(aNumeros)
   
   QOut("--- Estatisticas ---")
   QOut("Menor numero: " + Str(aNumeros[1]))
   QOut("Maior numero: " + Str(aNumeros[Len(aNumeros)]))
   QOut("Soma total: " + Str(nSoma))
   QOut("Media: " + Str(nSoma / Len(aNumeros)))
RETURN