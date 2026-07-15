# Exercício 2 — Pseudocódigo

Escreva em pseudocódigo um algoritmo para cada item:

# a. Calcular a área de um retângulo (base × altura)
    1- Escreva o valor da base do retângulo:
    2- Escreva o valor da altura do retângulo:
    3- Multiplique o valor da base pelo valor da altura
    4- Exiba o resultado

# b. Verificar se um número é par ou ímpar
    1- Escreva um número inteiro:
    2- Divida o número por 2
    3- Se o resto for igual 0, o número é par
    4- Se o resultado for diferente de 0, o número é ímpar

# c. Encontrar o maior entre três números

```mermaid
flowchart TD
    A((Início)) --> B[/ Leia N1 /] 
    B --> C[/ Leia N2 /]
    C --> D[/ Leia N3 /]
    
    D --> E{ N1 > N2? } 
    
    E -->|Sim| J{N1 > N3?}
    E -->|Não| P{N2 > N3?}
    
    J -->|Sim| L[/ Escreva: N1 é o maior /]
    J -->|Não| N[/ Escreva: N3 é o maior /]
    
    P -->|Sim| S[/ Escreva: N2 é o maior /]
    P -->|Não| T[/ Escreva: N3 é o maior /]
    
    L --> O((Fim))
    N --> O
    S --> O
    T --> O
