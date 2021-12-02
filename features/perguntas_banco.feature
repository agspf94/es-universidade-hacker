#language: pt

Funcionalidade: Entrar em uma partida e ver questões cadastradas no banco
Como um usuário do sistema
Eu quero poder visualizar no jogo questões anteriormente cadastradas
Para que eu possa respondê-las

Cenário: Iniciar corretamente a partida e ver as perguntas cadastradas
  Dado cadastrei perguntas suficientes no banco
  E tenho perguntas suficientes cadastradas no banco
  E que estou no menu principal
  Quando clico no botão "Novo Jogo"
  Então serei redirecionado para "Partida"
  E deverei ver as perguntas cadastradas anteriormente