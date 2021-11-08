#language: pt

Funcionalidade: Gerenciar telas
  Como um usuário do sistema
  Para que eu possa acessar os principais recursos do sistema a partir dela
  Eu quero ter acesso a uma tela de menu principal

Cenário: Acessando o jogo
  Dado que estou na página de menu principal
  Quando clico em jogar
  Então devo ser redirecionado para a página inicial do jogo

Cenário: Saindo do Sistema
  Dado que estou na página de menu principal
  Quando clico em sair
  Então devo ser redirecionado para a página de login

Cenário: Acessando cadastro de usuário
  Dado que estou na página de menu principal
  Quando clico em cadastrar usuário
  Então devo ser redirecionado para a página de cadastro de usuário