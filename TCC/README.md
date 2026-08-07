## Dicionário de Dados - Tabela ZZ1 (Controle de Fornecimento)

**Tabela:** ZZ1 - Controle de Fornecedores / ISO 9001

### Campos (SX3)
| Campo | Tipo | Tamanho | Decimal | Título | Descrição | Obrigatório |
| :--- | :---: | :---: | :---: | :--- | :--- | :---: |
| ZZ1_FILIAL | C (Caracter) | 2 | 0 | Filial | Filial do Sistema | Sim |
| ZZ1_COD | C (Caracter) | 6 | 0 | Código | Código do Fornecedor | Sim |
| ZZ1_LOJA | C (Caracter) | 2 | 0 | Loja | Loja do Fornecedor | Sim |
| ZZ1_NOME | C (Caracter) | 40 | 0 | Nome | Nome do Fornecedor | Sim |
| ZZ1_TOLERA | N (Numérico) | 5 | 2 | Tolerância (%) | % de Tolerância ISO | Não |

### Índices (SIX)
| Ordem | Chave do Índice | Descrição |
| :---: | :--- | :--- |
| 1 | ZZ1_FILIAL + ZZ1_COD + ZZ1_LOJA | Busca por Código (Chave Primária) |
| 2 | ZZ1_FILIAL + ZZ1_NOME | Busca Alfabética por Nome |

### Tabela (SX2)
| Tabela (Chave) | Arquivo Físico | Descrição | Modo |
| :--- | :--- | :--- | :--- |
| ZZ1 | ZZ1990 | Controle de Fornecedores ISO | E (Exclusivo) |

### Campos (SX3)
| Campo | Tipo | Tamanho | Decimal | Título | Obrigatório | Validação (X3_VLDUSER) |
| :--- | :---: | :---: | :---: | :--- | :---: | :--- |
| ZZ1_FILIAL | C | 2 | 0 | Filial | Sim | |
| ZZ1_COD | C | 6 | 0 | Código | Sim | ExistCpo("SA2") |
| ZZ1_LOJA | C | 2 | 0 | Loja | Sim | |
| ZZ1_NOME | C | 40 | 0 | Nome | Sim | |
| ZZ1_TOLERA | N | 5 | 2 | Tolerância(%) | Não | M->ZZ1_TOLERA >= 0 .And. M->ZZ1_TOLERA <= 100 |