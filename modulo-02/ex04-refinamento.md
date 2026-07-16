# Exercício 4 — Refinamento sucessivo

Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
pagar.”

Entregue dois níveis: o Nível 1 (visão geral, 3–4 passos) e o Nível 2 (cada passo detalhado).

## Nível 1 - Visão geral

    1-Registrar os itens da compra.
    2-Calcular o subtotal.
    3-Processar a regra de desconto.
    4-Finalizar e exibir o total a pagar.

## Nível 2 - Visão Detalhada

### Pseudocódigo

    Início
    
        eia valor_da_compra
        Leia tem_cartao_fidelidade
    
        Se tem_cartao_fidelidade == "Sim"
        valor_final <- valor_da_compra - (valor_da_compra * 0.05)
        Senão
        valor_final <- valor_da_compra
        
    Escreva "O total a pagar é: "
    Escreva valor_final

    Fim

### Fluxograma

```mermaid
    flowchart TD
    A((Início)) --> B[Passar a compra no código de barras]
    B --> C[Somar a compra para ter o subtotal]
    
    C --> D{Cliente tem cartão fidelidade?}
    
    D -->|Sim| E[Deduzir 5 por cento do valor total]
    D -->|Não| F[Manter o valor sem desconto]
    
    E --> G[/Mostrar o total a pagar/]
    F --> G
    
    G --> H((Fim))

