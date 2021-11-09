Dado('que estou no menu principal') do
  visit '/menu_principal'
end

Quando('clico no botão {string}') do |string|
  click_on 'Novo Jogo'
end

Então('serei redirecionado para {string}') do |string|
  expect(page).to have_content 'Pergunta 1'
end

Dado('que iniciei uma partida corretamente') do
  visit '/partida'
end

Dado('recebi a primeira questão do jogo') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('selecionei a alternativa correta como respota') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('cliquei em {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ser redirecionado para a página {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver uma mensagem com a pontuação igual {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('selecionei uma alternativa incorreta como respota') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('não selecionei uma alternativa como respota') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver uma mensagem de erro: {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
