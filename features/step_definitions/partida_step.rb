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

Dado('recebi as questões do jogo') do
  expect(page).to have_content 'Enunciado'
end

Dado('selecionei todas as alternativas corretas como resposta') do
  choose("P1alternativa1") and
    choose("P2alternativa1")
end

Quando('cliquei em {string}') do |string|
  click_on 'Finalizar'
end

Então('deverei ser redirecionado para a página {string}') do |string|
  expect(page).to have_content 'Resultado'
end

Então('deverei ver uma mensagem com a pontuação igual {int}') do |int|
  expect(page).to have_content "Pontuacao: #{int}"
end

Dado('selecionei todas as alternativas incorretas como resposta') do
  choose("P1alternativa2") and
    choose("P2alternativa2")
end
