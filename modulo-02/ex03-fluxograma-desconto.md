# Exercício 3 — Fluxograma

Monte um fluxograma para o seguinte problema:

“Uma loja dá desconto de 10% para compras acima de R$ 100. Leia o valor da compra e
mostre o valor final a pagar.”

```mermaid
flowchart TD
    A((Início)) --> B[\"Insira o valor da compra:"\]
    B --> C{O valor da compra é >= 100?}
    C --> |Sim| D[/"Desconte 10%"/]  
    C --> |Não| E[/"Não há desconto para esse compra"/]
    E --> F((Fim))
    D --> F
