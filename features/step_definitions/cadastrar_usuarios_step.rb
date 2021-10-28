Dado('que estou na página de cadastro') do
  visit '/usuarios/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em salvar') do
  click_on 'Salvar'
end

Então('ele deve ter sido salvo no banco de dados') do
  usuario = Usuario.order("id").last
  expect(usuario.email).to eq('miguel.vasconcelos@usp.br')
  expect(usuario.senha).to eq('123456')
end

Então('deverei ver o usuário na página de listagem de usuários') do
  expect(page).to have_content('miguel.vasconcelos@usp.br')
  expect(page).to have_content('123456')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end
