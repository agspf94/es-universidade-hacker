#language: pt

Funcionalidade: CRUD para perguntas
   Como administrador do jogo
   Para que eu possa gerenciar perguntas
   Eu quero ter uma interface de criação, remoção, atualização e leitura de perguntas.

Cenário: Cadastro de pergunta com sucesso
  Dado que estou na página de cadastro de pergunta
  Quando preencho o campo "Enunciado" com ""
  Quando preencho o campo "Alternativa A" com ""
  Quando preencho o campo "Alternativa B" com ""
  Quando preencho o campo "Alternativa C" com ""
  Quando preencho o campo "Alternativa D" com ""
  E clico em salvar
  Então ela deve ter sido salva no banco de dados
  E deverei ver a pergunta na página de listagem de perguntas