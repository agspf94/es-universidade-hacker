Dado('que vou a pagina de jogo') do
  visit '/partida'
end

Dado('que eu tenho uma maior pontuação igual a {int}') do |bestscore|
  usuario = Usuario.order("created_at").last
  usuario.update(email: usuario.email, senha: usuario.senha, bestscore: bestscore, nome: usuario.nome)
end

Quando('seleciono na pergunta {string} a alternativa correta {string}') do |string1, string2|
  choose("P" + string1 + "alternativa" + string2)
end

Quando('seleciono na pergunta {string} a alternativa incorreta {string}') do |string1, string2|
  choose("P" + string1 + "alternativa" + string2)
end

Quando('clico em Finalizar') do
  click_on 'Finalizar'
end

Então('deverei receber a mensagem {string}') do |texto|
  expect(page).to have_content texto
end