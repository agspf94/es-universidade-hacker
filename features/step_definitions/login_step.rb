Dado('que eu tenho um usuário com "Email" cadastrado {string} e "Senha" cadastrada {string} e "Nome" cadastrado {string}') do |usuario_email, usuario_senha, usuario_nome |
  usuario = Usuario.new
  usuario.email = usuario_email
  usuario.nome = usuario_nome
  usuario.senha = usuario_senha
  usuario.save
end

Dado('que eu estou na pagina de login') do
  visit '/login'
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
  fill_in string, :with => ""
end

Quando('clico em Cadastrar-se') do
  click_on 'Cadastrar-se'
end

Então('deverei ser redirecionado à página de cadastro') do
  expect(page).to have_content('Novo usuario')
end

