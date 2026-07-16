#define PI 3.14159

PROCEDURE Main()
   LOCAL cEntrada
   LOCAL nRaio, nArea
   LOCAL nCatetoA, nCatetoB, nHipotenusa
   LOCAL nPeso, nAltura, nIMC

   // a. Area do circulo
   ACCEPT "Raio do circulo: " TO cEntrada
   nRaio := Val(cEntrada)
   nArea := PI * (nRaio ^ 2)
   QOut("Area: " + Str(nArea, 10, 2))

   // b. Hipotenusa
   ACCEPT "Cateto A: " TO cEntrada
   nCatetoA := Val(cEntrada)
   ACCEPT "Cateto B: " TO cEntrada
   nCatetoB := Val(cEntrada)
   nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))
   QOut("Hipotenusa: " + Str(nHipotenusa, 10, 2))

   // c. IMC
   ACCEPT "Peso (kg): " TO cEntrada
   nPeso := Val(cEntrada)
   ACCEPT "Altura (m): " TO cEntrada
   nAltura := Val(cEntrada)
   nIMC := nPeso / (nAltura ^ 2)
   QOut("IMC: " + Str(nIMC, 10, 2))
RETURN