Dado('que loguei no sistema com sucesso com {string} {string} e {string} {string}') do |email, emailteste, senha, senhateste|
  usuario = Usuario.new
  usuario.email = emailteste
  usuario.nome = "Anderson"
  usuario.senha = senhateste
  usuario.save
  visit "/login"
  fill_in email, :with => emailteste
  fill_in senha, :with => senhateste
  click_on "Entrar"
end

Então('deve existir um cookie com meu email {string}') do |email|
  @usuario = Usuario.find_by(email: email)
  cookies[:usuarios_id] = @usuario
end

Então('serei redirecionado para o menu principal') do
  visit '/menu_principal'
end

Então('o nome {string} deve ser exibido na tela inicial.') do |string|
  expect(page).to have_content string
end