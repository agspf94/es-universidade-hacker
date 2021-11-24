#language: pt

Funcionalidade: CRUD para perguntas
   Como administrador do jogo
   Para que eu possa gerenciar perguntas
   Eu quero ter uma interface de criação, remoção, atualização e leitura de perguntas.

Cenário: Cadastro de pergunta com sucesso
  Dado que estou na página de cadastro de pergunta
  Quando preencho o campo "Enunciado" com "1"
  Quando preencho o campo "Alternativa a" com "2"
  Quando preencho o campo "Alternativa b" com "3"
  Quando preencho o campo "Alternativa c" com "4"
  Quando preencho o campo "Alternativa d" com "5"
  Quando preencho o campo "Alternativa correta" com "6"
  E clico em salvar
  Então ela deve ter sido salva no banco de dados
  E deverei ver a pergunta na página de listagem de perguntas

Cenário: Cadastro de pergunta com erro - sem nenhuma alternativa
  Dado que estou na página de cadastro de pergunta
  Quando preencho o campo "Enunciado" com "1"
  E deixo o campo "Alternativa a" vazio
  E deixo o campo "Alternativa b" vazio
  E deixo o campo "Alternativa c" vazio
  E deixo o campo "Alternativa d" vazio
  E deixo o campo "Alternativa correta" vazio
  E clico em salvar
  Então deverei ver a mensagem de erro "É obrigatório preencher todas as alternativas!"

Cenário: Cadastro de pergunta com erro - sem enunciado
  Dado que estou na página de cadastro de pergunta
  E deixo o campo "Enunciado" vazio
  E clico em salvar
  Então deverei ver a mensagem de erro "É obrigatório preencher o enunciado!"