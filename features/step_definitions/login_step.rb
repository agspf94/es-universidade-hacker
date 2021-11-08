Dado('que eu estou na pagina de login') do
  visit '/login/new'
end

Quando('preencho o campo de {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em Entrar') do
  click_on 'Entrar'
end

Entao('devo receber a mensagem {string}') do |string|
  expect(page).to have_content(string)
end

Quando('deixo o campo de {string} vazio') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
