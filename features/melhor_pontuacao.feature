#language: pt

Funcionalidade: Atualizar pontuação do jogador ao terminar a partida
  Como um usuário do sistema
  Eu quero poder registrar minha maior pontuação
  Para que eu possa visualizá-la depois nos rankings

Cenário: Jogador consegue a sua maior pontuação
  Dado que eu estou na pagina de login
  E que loguei no sistema com sucesso com "Email" "mtqr1@gmail.com" e "Senha" "Tads"
  E possuo questões suficientes cadastradas
  E que vou a pagina de jogo
  E que eu tenho uma maior pontuação igual a 4
  E selecionei na pergunta "1" a alternativa "correta"
  E selecionei na pergunta "2" a alternativa "correta"
  E selecionei na pergunta "3" a alternativa "correta"
  E selecionei na pergunta "4" a alternativa "correta"
  E selecionei na pergunta "5" a alternativa "correta"
  Quando clico em Finalizar
  Então deverei receber a mensagem "Novo recorde!"

Cenário: Jogador não consegue ultrapassar sua maior pontuação
  Dado que eu estou na pagina de login
  E que loguei no sistema com sucesso com "Email" "mtqr1@gmail.com" e "Senha" "Tads"
  E possuo questões suficientes cadastradas
  E que vou a pagina de jogo
  E que eu tenho uma maior pontuação igual a 3
  E selecionei na pergunta "1" a alternativa "correta"
  E selecionei na pergunta "2" a alternativa "correta"
  E selecionei na pergunta "3" a alternativa "incorreta"
  E selecionei na pergunta "4" a alternativa "incorreta"
  E selecionei na pergunta "5" a alternativa "incorreta"
  Quando clico em Finalizar
  Então deverei receber a mensagem "Não foi dessa vez!"