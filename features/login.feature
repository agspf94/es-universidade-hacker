#language: pt

Funcionalidade: Login de usuarios
Como jogador
Para que eu possa ter acessos aos meus dados do historico de jogo
Eu quero logar em minha conta

Cenario: Login de usuario com sucesso
  Dado que eu estou na pagina de login
  E que eu tenho um usuário com "Email" cadastrado "teste@gmail.com" e "Senha" cadastrada "qwe123"
  Quando preencho o campo de "Email" com "teste@gmail.com"
  Quando preencho o campo de "Senha" com "qwe123"
  E clico em Entrar
  Entao devo receber a mensagem "Menu Principal"

Cenario: Login de usuario com erro - e-mail vazio
  Dado que eu estou na pagina de login
  Quando deixo o campo de "Email" vazio
  E preencho o campo de "Senha" com "qwe123"
  E clico em Entrar
  Entao deverei ver a mensagem de erro "É obrigatório informar o e-mail!"

Cenario: Login com erro - e-mail inválido
  Dado que eu estou na pagina de login
  Quando preencho o campo de "Email" com "asdfq2u.br"
  E preencho o campo de "Senha" com "qwe123"
  E clico em Entrar
  Entao deverei ver a mensagem de erro "Email/Senha inválido!"

Cenario: Login de usuario com erro - senha vazia
  Dado que eu estou na pagina de login
  Quando preencho o campo de "Email" com "teste@gmail.com"
  E deixo o campo de "Senha" vazio
  E clico em Entrar
  Entao deverei ver a mensagem de erro "É obrigatório informar a senha!"

Cenario: Cadastro de aluno com erro - senha inválida
  Dado que eu estou na pagina de login
  Quando preencho o campo de "Email" com "teste@gmail.com"
  E preencho o campo de "Senha" com "woe10"
  E clico em Entrar
  Entao deverei ver a mensagem de erro "Email/Senha inválido!"

Cenario: Ir para a página de cadastro
  Dado que eu estou na pagina de login
  Quando clico em Cadastrar-se
  Entao deverei ser redirecionado à página de cadastro