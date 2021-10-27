Dado('que estou na página de menu principal') do
  visit '/menu_principal'
end

Quando('clico em jogar') do
  click_on 'Novo Jogo'
end

Então('devo ser redirecionado para a página inicial do jogo') do
  expect(page).to have_title "jogo"
end