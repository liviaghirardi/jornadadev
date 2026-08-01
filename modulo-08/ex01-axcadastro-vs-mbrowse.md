# Exercício 1 — AxCadastro × mBrowse

## a. Quando você usaria AxCadastro e quando usaria mBrowse ? Dê um exemplo de cada.

- AxCadastro: É ideal para protótipos ou telas de cadastros simples (o "jeito rápido"), pois exige pouquíssimas linhas de código para montar um CRUD funcional. Exemplo: Um cadastro básico de categorias ou tipos de produtos.  

- mBrowse: É a escolha para o ambiente de produção profissional, pois oferece maior nível de controle e recursos avançados. Exemplo: A tela definitiva de Pets que exige legendas de status ou o Cadastro de Clientes oficial do sistema.  

## b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

- Legendas coloridas para indicar visualmente o status de cada registro (configuradas via array aColors).  

- Filtros de tela dinâmicos, permitindo refinar os registros exibidos.  

- Controle detalhado de botões customizados, possibilitando alterar ou adicionar novas funcionalidades além do padrão (Incluir, Alterar, Excluir) utilizando o array aRotina.  

## c. Na configuração de legendas ( aColors ), por que a regra ".T." deve ficar por último?

Na configuração de legendas (aColors), por que a regra ".T." deve ficar por último?
O Protheus avalia o array aColors de cima para baixo. O comando .T. (True / Verdadeiro) serve como a cor padrão para qualquer registro que não se encaixou nas regras anteriores. Se você colocar o .T. logo na primeira linha ou no meio, o sistema vai considerar a condição verdadeira imediatamente para todos os registros que passarem por ele, ignorando completamente as regras específicas que estiverem abaixo.

## d. Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preenchero nome do cliente?

- Campo Virtual: Ele não existe fisicamente e não é gravado no banco de dados. Ele é apenas calculado "em tempo real" na memória da tela. Por exemplo, ao visualizar um Pet, o sistema lê o código do cliente dono e vai na tabela de clientes (SA1) buscar o nome apenas para exibir na tela.  

- Gatilho (SX7): É uma regra de tela ativa que diz "quando o usuário digitar um valor no campo A, calcule/preencha o campo B assim". Ele é executado durante a digitação para poupar trabalho (como preencher Bairro e UF ao digitar o CEP). Diferente do campo virtual, o campo preenchido pelo gatilho normalmente é um campo físico (Real) e a informação será efetivamente salva no banco de dados.  
