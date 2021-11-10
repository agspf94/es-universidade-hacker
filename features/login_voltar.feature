#language: pt

Funcionalidade: Voltar ao login
  Como um usuário do sistema
  Eu quero voltar à tela de login após cadastrar um usuário
  Para que eu possa logar no sistema com o e-mail e a senha recém cadastrados

  Cenário: Voltando ao login
    Dado que cadastrei o usuário "exemplo@exemplo.com" com senha "1234"
    E que estou na página de dados do usuário
    Quando clico em voltar ao login
    Então devo ser redirecionado para a página de login