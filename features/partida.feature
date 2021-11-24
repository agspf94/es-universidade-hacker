#language: pt

Funcionalidade: Jogar uma partida com 1 questão e ver meu desempenho
Como jogador,
Após efetuar o login na plataforma
Ao clicar no botão Jogar do menu principal
Eu quero jogar uma partida com uma questão
E ver meu desempenho no final.

Cenário: Iniciar corretamente a partida
  Dado que estou no menu principal
  Quando clico no botão "Jogar"
  Então serei redirecionado para "partida"

Cenário: Iniciar a partida e responder todas as questões corretamente
  Dado que iniciei uma partida corretamente
  E recebi as questões do jogo
  E selecionei todas as alternativas corretas como resposta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 1

Cenário: Iniciar a partida e responder todas as questões incorretamente
  Dado que iniciei uma partida corretamente
  E recebi as questões do jogo
  E selecionei todas as alternativas incorretas como resposta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 0