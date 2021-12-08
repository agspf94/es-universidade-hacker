#language: pt

Funcionalidade: Jogar uma partida com 5 questões e ver meu desempenho
Como jogador,
Após efetuar o login na plataforma
Ao clicar no botão Jogar do menu principal
Eu quero jogar uma partida com uma questão
E ver meu desempenho no final.

Cenário: Iniciar corretamente a partida
  Dado que estou no menu principal
  E possuo questões suficientes cadastradas
  E tenho perguntas suficientes cadastradas no banco
  Quando clico no botão "Novo Jogo"
  Então serei redirecionado para "Partida"

Cenário: Iniciar a partida e responder todas as questões corretamente
  Dado que eu estou na pagina de login
  E que loguei no sistema com sucesso com "Email" "mtqr1@gmail.com" e "Senha" "Tads"
  E possuo questões suficientes cadastradas
  E tenho perguntas suficientes cadastradas no banco
  E que iniciei uma partida corretamente
  E selecionei na pergunta "1" a alternativa "correta"
  E selecionei na pergunta "2" a alternativa "correta"
  E selecionei na pergunta "3" a alternativa "correta"
  E selecionei na pergunta "4" a alternativa "correta"
  E selecionei na pergunta "5" a alternativa "correta"
  E que eu tenho uma maior pontuação igual a 4
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 5

Cenário: Iniciar a partida e responder todas as questões incorretamente
  Dado que eu estou na pagina de login
  E que loguei no sistema com sucesso com "Email" "mtqr1@gmail.com" e "Senha" "Tads"
  E possuo questões suficientes cadastradas
  E tenho perguntas suficientes cadastradas no banco
  E que iniciei uma partida corretamente
  E selecionei na pergunta "1" a alternativa "incorreta"
  E selecionei na pergunta "2" a alternativa "incorreta"
  E selecionei na pergunta "3" a alternativa "incorreta"
  E selecionei na pergunta "4" a alternativa "incorreta"
  E selecionei na pergunta "5" a alternativa "incorreta"
  E que eu tenho uma maior pontuação igual a 2
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 0

Cenário: Iniciar a partida e acertar três questões
  Dado que eu estou na pagina de login
  E que loguei no sistema com sucesso com "Email" "mtqr1@gmail.com" e "Senha" "Tads"
  E possuo questões suficientes cadastradas
  E tenho perguntas suficientes cadastradas no banco
  E que iniciei uma partida corretamente
  E selecionei na pergunta "1" a alternativa "correta"
  E selecionei na pergunta "2" a alternativa "correta"
  E selecionei na pergunta "3" a alternativa "incorreta"
  E selecionei na pergunta "4" a alternativa "correta"
  E selecionei na pergunta "5" a alternativa "incorreta"
  E que eu tenho uma maior pontuação igual a 2
  Quando cliquei em "finalizar"
  Então deverei ser redirecionado para a página "resultado"
  Então deverei ver uma mensagem com a pontuação igual 3