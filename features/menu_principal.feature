#language: pt

Funcionalidade: Gerenciar telas
  Como um usuário do sistema
  Para que eu possa acessar os principais recursos do sistema a partir dela
  Eu quero ter acesso a uma tela de menu principal

Cenário: Acessando o jogo com perguntas suficientes
  Dado que estou na página de menu principal
  E possuo questões suficientes cadastradas
  Quando clico em jogar
  Então devo ser redirecionado para a página inicial do jogo

Cenário: Acessando o jogo com perguntas insuficientes
  Dado que estou na página de menu principal
  E não possuo questões suficientes cadastradas
  Quando clico em jogar
  Então devo permanecer na página de menu principal


  Cenário: Saindo do Sistema
  Dado que estou na página de menu principal
  Quando clico em sair
  Então devo ser redirecionado para a página de login