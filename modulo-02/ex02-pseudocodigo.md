# Exercício 2 — Pseudocódigo

Escreva em pseudocódigo um algoritmo para cada item:

## a. Calcular a área de um retângulo (base × altura)
    Início

        Leia base
        Leia altura
    
        area <- base * altura
    
        Escreva "A área do retângulo é: "
        Escreva area
    Fim


## b. Verificar se um número é par ou ímpar
    Início

        Leia numero
    
        Se o resto da divisao de numero por 2 for igual a 0
        Escreva "O número é par"
    
    Senão
        Escreva "O número é ímpar"

    Fim

##  c. Encontrar o maior entre três números

### Pseudocódigo
    Início
        Leia N1
        Leia N2
        Leia N3
        
        Se N1 > N2
            Se N1 > N3
                Escreva "N1 é o maior"
            Senão
                Escreva "N3 é o maior"
                
        Senão
            Se N2 > N3
                Escreva "N2 é o maior"
            Senão
                Escreva "N3 é o maior"
    Fim

### Fluxograma

```mermaid
flowchart TD
    A((Início)) --> B[ Leia N1 ] 
    B --> C[Leia N2]
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
