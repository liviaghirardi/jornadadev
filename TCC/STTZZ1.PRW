#INCLUDE "protheus.ch"

/*/{Protheus.doc} STTZZ1
Rotina de cadastro e manutencao da tabela ZZ1 (Controle de Fornecedores ISO 9001)
/*/
USER FUNCTION STTZZ1()
    // Define o titulo que vai aparecer no cabecalho da tela
    PRIVATE cCadastro := "Controle de Fornecedores - ISO 9001"

    // aRotina define os botoes padroes da tela
    // Estrutura: {"Nome do Botao", "Funcao", Reservado, Operacao}
    // Operacoes: 1=Pesquisar, 2=Visualizar, 3=Incluir, 4=Alterar, 5=Excluir, 6=Customizado
    PRIVATE aRotina   := {}
    AAdd(aRotina, {"Pesquisar" , "AxPesqui", 0, 1})
    AAdd(aRotina, {"Visualizar", "AxVisual", 0, 2})
    AAdd(aRotina, {"Incluir"   , "AxInclui", 0, 3})
    AAdd(aRotina, {"Alterar"   , "AxAltera", 0, 4})
    AAdd(aRotina, {"Excluir"   , "AxDeleta", 0, 5})
    AAdd(aRotina, {"Padronizar", "U_STTZZ1PRO", 0, 6})

    // Prepara a tabela antes de abrir a tela
    dbSelectArea("ZZ1")
    dbSetOrder(1) // Ordem 1: ZZ1_FILIAL + ZZ1_COD + ZZ1_LOJA

    // Chama o mBrowse padrao do Protheus
    mBrowse(0, 0, 100, 100, "ZZ1")

RETURN NIL

/*/{Protheus.doc} STTZZ1PRO
Rotina customizada para demonstrar gravação segura e tratamento de erros (TCC)
/*/
USER FUNCTION STTZZ1PRO()
    LOCAL oErro
    LOCAL lSucesso := .T.

    // 1. Verifica se tem algum fornecedor selecionado na tela
    If Empty(ZZ1->ZZ1_COD)
        MsgStop("Selecione um fornecedor na lista primeiro!", "Atenção")
        Return .F.
    EndIf

    // 2. Abre a transação de banco de dados
    BeginTran()

    BEGIN SEQUENCE
        // Exemplo de validação customizada forçando um erro de negócio
        If ZZ1->ZZ1_TOLERA < 0
            Break("A tolerância do fornecedor está negativa. Corrija antes de padronizar.")
        EndIf

        // 3. Gravação manual segura no banco
        RecLock("ZZ1", .F.) // .F. indica alteração do registro atual
            ZZ1->ZZ1_NOME := Upper(ZZ1->ZZ1_NOME) // Transforma o nome para MAIÚSCULO
        MsUnLock()

    RECOVER WITH oErro
        // 4. Se qualquer erro acontecer (técnico ou Break), cancela a gravação
        RollBackTran()
        lSucesso := .F.

        // Exibe a mensagem amigável
        If ValType(oErro) == "O" // Erro técnico de sistema
            MsgStop("Ops! Ocorreu uma falha no sistema ao tentar gravar os dados. Nenhuma alteração foi salva.", "Erro de Gravação")
        Else // Erro de negócio (nosso Break)
            MsgStop(oErro, "Validação")
        EndIf
    END SEQUENCE

    // 5. Só efetiva no banco se passou ileso pelo BEGIN SEQUENCE
    If lSucesso
        CommitTran()
        MsgInfo("Nome do fornecedor padronizado e salvo com sucesso!", "Tudo certo")
    EndIf

RETURN lSucesso