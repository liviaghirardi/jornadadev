#INCLUDE "TOTVS.CH"

User Function EX06()
    Local lOk := .T.
    
    Begin Transaction
        
        If !lOk
            DisarmTransaction()
            Help(,,"ERRO",,"A transaçãoo foi abortada com sucesso.",1,0)
        EndIf
        
    End Transaction
    
    If lOk
        MsgInfo("Transação concluída e gravada com sucesso!", "Atenção")
    EndIf

Return