#language: pt

Funcionalidade: Cadastrar usuários
  Como usuário
  Para que eu possa jogar
  Eu quero me cadastrar na plataforma

  Cenário: Cadastro de usuário com sucesso
    Dado que estou na página de cadastro
    Quando preencho o campo "Email" com "miguel.vasconcelos@usp.br"
    Quando preencho o campo "Senha" com "123456"
    E clico em salvar
    Então ele deve ter sido salvo no banco de dados
    E deverei ver o usuário na página de listagem de usuários

  Cenário: Cadastro de usuário com erro - sem e-mail
    Dado que estou na página de cadastro
    Quando preencho o campo "Senha" com "123456"
    E deixo o campo "Email" vazio
    E clico em salvar
    Então deverei ver a mensagem de erro "É obrigatório informar o email!"

  Cenário: Cadastro de usuário com erro - sem senha
    Dado que estou na página de cadastro
    Quando preencho o campo "Email" com "miguel.vasconcelos@usp.br"
    E deixo o campo "Senha" vazio
    E clico em salvar
    Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

  Cenário: Cadastro de usuário com erro - e-mail inválido
    Dado que estou na página de cadastro
    Quando preencho o campo "Senha" com "123456"
    E preencho o campo "Email" com "a!1ç....,,,´/ ? @a"
    E clico em salvar
    Então deverei ver a mensagem de erro "Formato de e-mail inválido!"