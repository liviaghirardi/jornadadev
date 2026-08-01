# Conceitos fundamentais 

## a. Qual é a função do AppServer?

O AppServer é o servidor do Protheus responsável por processar o código da aplicação e conversar diretamente com o banco de dados. Ele é uma peça fundamental da arquitetura, servindo como o intermediário que executa as lógicas e conecta a interface do usuário (SmartClient) aos dados guardados

## b. O que é o RPO?

O RPO (Repositório de Objetos) é um repositório central para onde os seus códigos-fonte (como os arquivos .prw em ADVPL) são compilados. Em vez de gerar um arquivo executável isolado para cada programa, tudo é compilado para dentro deste repositório, que será lido e executado pelo sistema.  

## c. Para que serve o Configurador (SIGACFG)?

O Configurador (SIGACFG) funciona como o "painel de controle" do sistema, usado para alterar regras no dicionário de dados de forma que a tela obedeça automaticamente. Com ele, é possível alterar propriedades de campos já existentes (como torná-los obrigatórios ou mudar seus títulos) , criar campos e abas customizados , além de controlar permissões de acesso por campo ou usuário sem precisar escrever nenhuma linha de código.  

## d. Qual a diferença entre campo Real e campo Virtual no SX3?

- Campo Real: É um campo físico que existe concretamente na estrutura da tabela do banco de dados (como em um arquivo DBF ou tabela SQL). O dado digitado nele é efetivamente salvo e persistido no banco.

- Campo Virtual: É um campo que existe apenas no dicionário de dados (SX3) e na memória durante a execução da tela. Ele não é gravado fisicamente no banco de dados e costuma ser utilizado para exibir cálculos, totalizadores temporários ou informações complementares baseadas em outros campos.