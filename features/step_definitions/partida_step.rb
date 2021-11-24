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
    choose("P2alternativa1") and
    choose("P3alternativa2") and
    choose("P4alternativa3") and
    choose("P5alternativa4")
end

Quando('cliquei em {string}') do |string|
  click_on 'Finalizar'
end

Então('deverei ser redirecionado para a página {string}') do |string|
  expect(page).to have_content 'Resultado'
end

Então('deverei ver uma mensagem com a pontuação igual {int}') do |int|
  expect(page).to have_content "Pontuação: #{int}"
end

Dado('selecionei todas as alternativas incorretas como resposta') do
  choose("P1alternativa4") and
    choose("P2alternativa4") and
    choose("P3alternativa3") and
    choose("P4alternativa2") and
    choose("P5alternativa1")
end

Dado('selecionei na pergunta {string} a alternativa correta {string}') do |string1, string2|
  choose("P" + string1 + "alternativa" + string2)
end

Dado('selecionei na pergunta {string} a alternativa incorreta {string}') do |string1, string2|
  choose("P" + string1 + "alternativa" + string2)
end
