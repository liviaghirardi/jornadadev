PROCEDURE Main()
   LOCAL aCarrinho := {}
   LOCAL cNome, cPreco, nTotal := 0, nI
   
   QOut("--- Adicionar ao Carrinho ---")
   WHILE .T.
      ACCEPT "Nome do produto (ou VAZIO para sair): " TO cNome
      IF Len(Trim(cNome)) == 0
         EXIT
      ENDIF
      
      ACCEPT "Preco: " TO cPreco
      AADD(aCarrinho, {cNome, Val(cPreco)}) 
   ENDDO
   
   QOut("--- Cupom Fiscal ---")
   FOR nI := 1 TO Len(aCarrinho)
      QOut(aCarrinho[nI][1] + " - R$ " + Str(aCarrinho[nI][2], 10, 2))
      nTotal += aCarrinho[nI][2]
   NEXT
   
   QOut("TOTAL: R$ " + Str(nTotal, 10, 2))
RETURN