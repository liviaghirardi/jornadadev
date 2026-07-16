PROCEDURE Main()
   LOCAL cStr1 := "Harbour"
   LOCAL cStr2 := "Harb"
   
   QOut("Usando '=' :")
   QOut(cStr1 = cStr2)  // Retorna .T.
   
   QOut("Usando '==' :")
   QOut(cStr1 == cStr2) // Retorna .F.
RETURN