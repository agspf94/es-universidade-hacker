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

Cenário: Iniciar a partida e responder a questão corretamente
  Dado que iniciei uma partida corretamente
  E recebi a primeira questão do jogo
  E selecionei a alternativa correta como resposta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 1

Cenário: Iniciar a partida e responder a questão incorretamente
  Dado que iniciei uma partida corretamente
  E recebi a primeira questão do jogo
  E selecionei uma alternativa incorreta como resposta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 0