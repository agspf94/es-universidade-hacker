#language: pt

Funcionalidade: Jogar uma partida com 5 questões e ver meu desempenho
Como jogador,
Após efetuar o login na plataforma
Ao clicar no botão Jogar do menu principal
Eu quero jogar uma partida com uma questão
E ver meu desempenho no final.

Cenário: Iniciar corretamente a partida
  Dado que estou no menu principal
  E cadastrei perguntas suficientes no banco
  E tenho perguntas suficientes cadastradas no banco
  Quando clico no botão "Novo Jogo"
  Então serei redirecionado para "Partida"

Cenário: Iniciar a partida e responder todas as questões corretamente
  Dado cadastrei perguntas suficientes no banco
  E tenho perguntas suficientes cadastradas no banco
  E que iniciei uma partida corretamente
  E recebi as questões do jogo
  E selecionei todas as alternativas corretas como resposta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 5

Cenário: Iniciar a partida e responder todas as questões incorretamente
  Dado cadastrei perguntas suficientes no banco
  E tenho perguntas suficientes cadastradas no banco
  E que iniciei uma partida corretamente
  E recebi as questões do jogo
  E selecionei todas as alternativas incorretas como resposta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 0

Cenário: Iniciar a partida e acertar três questões
  Dado cadastrei perguntas suficientes no banco
  E tenho perguntas suficientes cadastradas no banco
  E que iniciei uma partida corretamente
  E recebi as questões do jogo
  E selecionei na pergunta "1" a alternativa correta
  E selecionei na pergunta "2" a alternativa correta
  E selecionei na pergunta "3" a alternativa incorreta
  E selecionei na pergunta "4" a alternativa correta
  E selecionei na pergunta "5" a alternativa incorreta
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 3