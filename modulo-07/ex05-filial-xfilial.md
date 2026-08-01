# Exercício 5 — A1_FILIAL e xFilial()

## a. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?

Toda tabela no Protheus precisa de um campo de filial porque o ERP possui, em sua essência, uma arquitetura multiempresa e multifilial.  O campo de filial (como ZA1_FILIAL na nossa tabela customizada ) é o responsável por controlar a "posse" daquele registro. É ele que define se um cliente (ou um Pet) cadastrado na filial de São Paulo também poderá ser visto pela filial do Rio de Janeiro (tabela compartilhada) ou se é exclusivo de uma única unidade (tabela exclusiva). Sem esse campo, a tabela quebra o padrão estrutural do sistema e não se encaixa no framework do Protheus. 

## b. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa “escrevesse a filial na mão” em vez de usar xFilial()

A função xFilial("NOME_DA_TABELA") é uma inteligência do framework do Protheus. Ela consulta o dicionário de dados (o arquivo SX2) em tempo real, verifica como a tabela está configurada (exclusiva ou compartilhada) e retorna o código de filial correto baseado na unidade em que o usuário está logado no momento.

Se um programador ignorar a xFilial() e "escrever a filial na mão" (por exemplo, forçando no código algo como ZA1_FILIAL := "01"), o programa ficará engessado e propenso a erros graves:

- Quebra de Escalabilidade: Se a empresa abrir uma filial "02" e o usuário dessa nova filial fizer um cadastro, o sistema vai ignorar o login dele e continuar salvando o registro na filial "01".

- Falsa Persistência / Sumiço de Dados: Dependendo da configuração de compartilhamento, o usuário pode salvar o registro e, ao recarregar a tela, não conseguir enxergá-lo, pois o dado foi salvo com o código de uma filial à qual ele não tem acesso.

- Desrespeito ao Dicionário: O princípio do Protheus é que o código obedece ao dicionário. Chumbando a filial no código, você anula qualquer configuração feita no Configurador (SIGACFG).
