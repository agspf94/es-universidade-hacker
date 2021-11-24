#language: pt

Funcionalidade: criar um Ranking com os 3 jogadores com a maior pontuação
  Como jogador,
  Após efetuar o login na plataforma
  Ao clicar no botão Ranking no menu principal
  Eu quero visualizar o nome dos 3 jogadores com a maior pontuação no jogo.

  Cenário: Acessar o Ranking com sucesso
    Dado que estou no menu principal
    Quando acesso a pagina  "/ranking"
    Então serei redirecionado para "Ranking"

  Cenário: Visualizar Ranking com as 3 maiores pontuações
    Dado que estou no menu principal
    Quando acesso a pagina  "/ranking"
    Então devo visualizar uma lista com 3 jogadores