PROCEDURE Main()
   LOCAL nA, nB, cOp, nResultado
   
   nA := LerNumero("Digite o primeiro valor: ")
   cOp := LerOperacao()
   nB := LerNumero("Digite o segundo valor: ")
   
   nResultado := Calcular(nA, nB, cOp)
   
   IF ValType(nResultado) == "L" .AND. nResultado == .F.
      QOut("Erro: Divisao por zero!")
   ELSE
      MostrarResultado(nResultado)
   ENDIF
RETURN

FUNCTION LerNumero(cMensagem)
   LOCAL cEntrada
   ACCEPT cMensagem TO cEntrada
   RETURN Val(cEntrada)

FUNCTION LerOperacao()
   LOCAL cOp
   ACCEPT "Operacao (+, -, *, /): " TO cOp
   RETURN cOp

FUNCTION Calcular(nA, nB, cOp)
   DO CASE
      CASE cOp == "+"
         RETURN nA + nB
      CASE cOp == "-"
         RETURN nA - nB
      CASE cOp == "*"
         RETURN nA * nB
      CASE cOp == "/"
         IF nB == 0
            RETURN .F. // Retorna falso se for divisão por zero
         ENDIF
         RETURN nA / nB
   ENDCASE
   RETURN 0

PROCEDURE MostrarResultado(nRes)
   QOut("O resultado e: " + Str(nRes))
RETURN