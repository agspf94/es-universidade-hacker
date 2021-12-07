#language: pt

Funcionalidade: desenvolver o gerenciamento de seções no sistema
  Como jogador,
  Quando efetuar o login na plataforma
  Então um cookie com meus dados será criado
  Para identificar o usuário logado

  Cenário: Após logar com sucesso, um cookie deve ser criado
    Dado que loguei no sistema com sucesso com "Email" "teste@gmail.com" e "Senha" "senha"
    Então serei redirecionado para o menu principal
    E deve existir um cookie com meu email "teste@gmail.com"

  Cenário: Após logar com sucesso, o nome do usuário logado deve ser exibido na tela inicial
    Dado que loguei no sistema com sucesso com "Email" "anderson@gmail.com" e "Senha" "anderson"
    Então serei redirecionado para o menu principal
    E o nome "Anderson" deve ser exibido na tela inicial.