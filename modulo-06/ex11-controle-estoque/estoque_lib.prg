// Biblioteca com as regras do array
FUNCTION BuscarProduto(aEstoque, cCodigo)
   LOCAL nI
   FOR nI := 1 TO Len(aEstoque)
      IF aEstoque[nI][1] == cCodigo
         RETURN nI // Devolve a posicao no array
      ENDIF
   NEXT
   RETURN 0 // Nao encontrou

FUNCTION RelatorioEstoque(aEstoque)
   LOCAL nI, nValorItem, nTotalGeral := 0
   QOut("--- RELATORIO DE ESTOQUE ---")
   FOR nI := 1 TO Len(aEstoque)
      nValorItem := aEstoque[nI][3] * aEstoque[nI][4]
      nTotalGeral += nValorItem
      QOut(aEstoque[nI][1] + " - " + aEstoque[nI][2] + " | Qtd: " + Str(aEstoque[nI][3]) + " | Valor Total: R$ " + Str(nValorItem, 10, 2))
   NEXT
   QOut("TOTAL GERAL: R$ " + Str(nTotalGeral, 10, 2))
   RETURN NIL