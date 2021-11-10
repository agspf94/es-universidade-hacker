Dado('que cadastrei o usuário {string} com senha {string}') do |usuario_email, usuario_senha|
  usuario = Usuario.new
  usuario.email = usuario_email
  usuario.senha = usuario_senha
  usuario.save
end

Dado('que estou na página de dados do usuário') do
  usuario = Usuario.order("id").last
  visit '/usuarios/%d' % [usuario.id]
end

Quando('clico em voltar ao login') do
  click_on 'Voltar ao login'
end

Então('devo ser redirecionado para a página de login') do
  expect(page).to have_content 'Login'
end