#language: pt

Funcionalidade: Atualizar pontuação do jogador ao terminar a partida
  Como um usuário do sistema
  Eu quero poder registrar minha maior pontuação
  Para que eu possa visualizá-la depois nos rankings

Cenário: Jogador consegue a sua maior pontuação
  Dado que eu estou na página do jogo
  E que eu tenho uma maior pontuação igual a 4
  Quando seleciono na pergunta "1" a alternativa correta "1"
  E seleciono na pergunta "2" a alternativa correta "1"
  E seleciono na pergunta "3" a alternativa correta "2"
  E seleciono na pergunta "4" a alternativa correta "3"
  E seleciono na pergunta "5" a alternativa correta "4"
  E clico em Finalizar
  Então deverei receber a mensagem "Novo recorde!"

Cenário: Jogador não consegue ultrapassar sua maior pontuação
  Dado que eu estou na página do jogo
  E que eu tenho uma maior pontuação igual a 2
  Quando seleciono na pergunta "1" a alternativa correta "1"
  E seleciono na pergunta "2" a alternativa incorreta "2"
  E seleciono na pergunta "3" a alternativa incorreta "3"
  E seleciono na pergunta "4" a alternativa incorreta "4"
  E seleciono na pergunta "5" a alternativa incorreta "1"
  E clico em Finalizar
  Então deverei receber a mensagem "Não foi dessa vez!"