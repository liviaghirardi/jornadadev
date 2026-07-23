PROCEDURE Main()
   LOCAL aDias := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}
   LOCAL cEntrada, nDia
   
   ACCEPT "Digite um numero de 1 a 7: " TO cEntrada
   nDia := Val(cEntrada)
   
   IF nDia >= 1 .AND. nDia <= 7
      QOut("O dia escolhido foi: " + aDias[nDia])
   ELSE
      QOut("Erro: Numero fora do intervalo!")
   ENDIF
RETURN