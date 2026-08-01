# Exercício 3 — Recriando a ZA1 no Configurador

## 1. Criação da Tabela no Dicionário (SX2)**
- Acesse o Configurador (SIGACFG) e abra a rotina de Dicionário de Dados.
- Inicie a criação de uma nova tabela e defina seu prefixo como **ZA1** (indicando ser uma tabela customizada).
- Defina o modo de compartilhamento da tabela (se será compartilhada entre empresas ou exclusiva).


## 2. Criação dos Campos no Dicionário (SX3)

- Dentro da estrutura da tabela ZA1 recém-criada, adicione os campos necessários: **ZA1_FILIAL**, **ZA1_NOME**, **ZA1_RACA** e **ZA1_NASC**.
- O campo ZA1_FILIAL deve ser criado obrigatoriamente para que a tabela respeite o padrão multiempresa do ERP.

**Dificuldade - Campos obrigatórios:** Ajuste a obrigatoriedade dos campos (como o nome do pet) usando o padrão da SA1 como referência.


## 3. Forçar o reconhecimento pelo framework

- Apenas cadastrar no dicionário não cria a tabela física de imediato.
- Para forçar o Protheus a reconhecer a ZA1 e criar o arquivo no banco, acesse a rotina de **fórmulas** do Protheus e execute a validação.

## 4. Conferência no MPSDU
- Abra a ferramenta utilitária MPSDU.
- Acesse o banco de dados e procure pela tabela física ZA1.
- Inspecione a estrutura da tabela para confirmar que ela foi criada com sucesso e que todos os campos configurados no SX3 (Filial, Nome, Raça e Nascimento) estão presentes.