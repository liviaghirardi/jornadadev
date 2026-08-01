# 

## a. Liste os campos da ZA1 (nome do campo, tipo, tamanho) — incluindo o campo de filial, que é obrigatório em toda tabela do Protheus.

- ZA1_FILIAL: Campo de filial, obrigatório para que a tabela se encaixe no padrão multiempresa do Protheus (Character).  
- ZA1_NOME: Para armazenar o nome do pet (Character).  
- ZA1_RACA: Para armazenar a raça do pet (Character).
- ZA1_NASC: Para armazenar a data de nascimento do pet. (Character)

## b. Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica).
O prefixo Z é a convenção oficial do Protheus para identificar tabelas customizadas de cliente. Ele indica que a tabela não vem de fábrica (não é padrão do ERP), mas foi criada exclusivamente para atender a uma necessidade específica daquela empresa (como o nosso exemplo didático dos pets).  

## c. Explique por que o prefixo da tabela é Z (o que esse prefixo significa em termos de convenção do Protheus).

O prefixo Z é a convenção oficial do Protheus para identificar tabelas customizadas de cliente. Ele indica que a tabela não vem de fábrica (não é padrão do ERP), mas foi criada exclusivamente para atender a uma necessidade específica daquela empresa (como o nosso exemplo didático dos pets).  

## d. Explique por que os campos começam com ZA1_ (ex: ZA1_NOME , ZA1_RACA ) e não apenas com o nome do campo solto.

No Protheus, existe uma regra geral e permanente: o nome de um campo é sempre formado pelo prefixo da tabela + _ + o nome do campo. Portanto, os campos levam o prefixo ZA1_ para que o sistema (e qualquer desenvolvedor que esteja lendo o código) saiba imediatamente a qual tabela aquele campo pertence, apenas olhando para o seu nome.  