FUNCTION FatorialN(nN)
   LOCAL nResultado := 1, nI
   FOR nI := nN TO 1 STEP -1
      nResultado *= nI
   NEXT
   RETURN nResultado

FUNCTION EhPrimo(nN)
   LOCAL nI, nDivisores := 0
   IF nN <= 1; RETURN .F.; ENDIF
   FOR nI := 1 TO nN
      IF nN % nI == 0
         nDivisores++
      ENDIF
   NEXT
   RETURN (nDivisores == 2)