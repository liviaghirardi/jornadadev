PROCEDURE Main()
   LOCAL cHora
   WHILE .T.
      cHora := ObterHora()
      cHora := FormatarHora(cHora)
      ExibirHora(cHora)
      Inkey(30)
   ENDDO
RETURN

FUNCTION ObterHora()
   RETURN Time()
FUNCTION FormatarHora(cHoraAtual)
   RETURN "Hora atual: " + cHoraAtual

PROCEDURE ExibirHora(cHoraFormatada)
   QOut(cHoraFormatada)
RETURN