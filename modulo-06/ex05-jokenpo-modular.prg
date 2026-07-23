PROCEDURE Main()
   LOCAL cMinhaJogada, cJogadaCPU, cResultado
   
   WHILE .T.
      ACCEPT "Tua jogada (Pedra, Papel, Tesoura) ou SAIR: " TO cMinhaJogada
      cMinhaJogada := Upper(Trim(cMinhaJogada))
      
      IF cMinhaJogada == "SAIR"
         EXIT
      ENDIF
      
      IF .NOT. ValidarJogada(cMinhaJogada)
         QOut("Jogada invalida! Tenta novamente.")
         LOOP
      ENDIF
      
      cJogadaCPU := SortearJogadaCPU()
      QOut("A CPU jogou: " + cJogadaCPU)
      
      cResultado := DefinirVencedor(cMinhaJogada, cJogadaCPU)
      QOut(">>> " + cResultado + " <<<")
      QOut("---------------------------------")
   ENDDO
RETURN

FUNCTION ValidarJogada(cJogada)
   RETURN (cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA")

FUNCTION SortearJogadaCPU()
   LOCAL aJogadas := {"PEDRA", "PAPEL", "TESOURA"}
   RETURN aJogadas[HB_RandomInt(1, 3)]

FUNCTION DefinirVencedor(c1, c2)
   IF c1 == c2
      RETURN "Empate!"
   ENDIF
   
   IF (c1 == "PEDRA" .AND. c2 == "TESOURA") .OR. ;
      (c1 == "PAPEL" .AND. c2 == "PEDRA") .OR. ;
      (c1 == "TESOURA" .AND. c2 == "PAPEL")
      RETURN "Tu venceste!"
   ELSE
      RETURN "A CPU venceu!"
   ENDIF