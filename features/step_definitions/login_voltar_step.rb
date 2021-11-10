Dado('que estou na página de dados do usuário') do
  visit '/usuarios/1'
end

Quando('clico em voltar ao login') do
  click_on 'Voltar ao login'
end

Então('ddevo ser redirecionado para a página de login') do
  expect(page).to have_content 'Login'
end