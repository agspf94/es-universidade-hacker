Dado('que estou no menu principal') do
  visit '/menu_principal'
end

Quando('clico no botão {string}') do |string|
  click_on string
end

Então('serei redirecionado para {string}') do |string|
  expect(page).to have_content string
end

Dado('que iniciei uma partida corretamente') do
  visit '/partida'
end

Dado('tenho perguntas suficientes cadastradas no banco') do
  num_perguntas = Perguntas.count(:id)
  expect(num_perguntas).to be >= 5
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

Dado('selecionei na pergunta {string} a alternativa {string}') do |string1, string2|
  resp = ""
  if string2 == "incorreta"
    resp = "0"
  elsif string2 == "correta"
    resp = "1"
  end
  for i in 1..4 do
    if find_field("P" + string1 + "alternativa" + i.to_s).value == resp
      choose("P" + string1 + "alternativa" + i.to_s)
      break
    end
  end
end
