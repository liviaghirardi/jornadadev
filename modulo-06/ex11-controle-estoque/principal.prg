SET PROCEDURE TO estoque_lib.prg

PROCEDURE Main()
   LOCAL aEstoque := {}
   LOCAL cOpcao, cCod, cNome, cEntrada, nPos
   LOCAL nQtd, nPreco
   
   WHILE .T.
      QOut("")
      QOut("--- CONTROLE DE ESTOQUE ---")
      QOut("1. Cadastrar Produto")
      QOut("2. Entrada de Estoque")
      QOut("3. Relatorio Geral")
      QOut("0. Sair")
      ACCEPT "Escolha uma opcao: " TO cOpcao
      
      DO CASE
         CASE cOpcao == "1"
            ACCEPT "Codigo: " TO cCod
            ACCEPT "Nome: " TO cNome
            ACCEPT "Quantidade Inicial: " TO cEntrada; nQtd := Val(cEntrada)
            ACCEPT "Preco Unitario: " TO cEntrada; nPreco := Val(cEntrada)
            AADD(aEstoque, {cCod, cNome, nQtd, nPreco})
            QOut("Produto cadastrado!")
            
         CASE cOpcao == "2"
            ACCEPT "Codigo do Produto para entrada: " TO cCod
            nPos := BuscarProduto(aEstoque, cCod)
            IF nPos > 0
               ACCEPT "Quantidade a adicionar: " TO cEntrada
               aEstoque[nPos][3] += Val(cEntrada) // Aumenta a quantidade
               QOut("Estoque atualizado!")
            ELSE
               QOut("Erro: Produto nao encontrado.")
            ENDIF
            
         CASE cOpcao == "3"
            RelatorioEstoque(aEstoque)
            
         CASE cOpcao == "0"
            EXIT
            
         OTHERWISE
            QOut("Opcao invalida.")
      ENDCASE
   ENDDO
RETURN