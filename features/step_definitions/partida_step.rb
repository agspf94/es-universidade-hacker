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

Dado('cadastrei perguntas suficientes no banco') do
  perguntas1 = Perguntas.new
  perguntas1.enunciado = "Responda a"
  perguntas1.alternativa_a = "Alternativa 1"
  perguntas1.alternativa_b = "Alternativa 2"
  perguntas1.alternativa_c = "Alternativa 3"
  perguntas1.alternativa_d = "Alternativa 4"
  perguntas1.alternativa_correta = "a"
  perguntas1.save

  perguntas2 = Perguntas.new
  perguntas2.enunciado = "Responda a, por favor"
  perguntas2.alternativa_a = "Alternativa 1"
  perguntas2.alternativa_b = "Alternativa 2"
  perguntas2.alternativa_c = "Alternativa 3"
  perguntas2.alternativa_d = "Alternativa 4"
  perguntas2.alternativa_correta = "a"
  perguntas2.save

  perguntas3 = Perguntas.new
  perguntas3.enunciado = "Responda b"
  perguntas3.alternativa_a = "Alternativa 1"
  perguntas3.alternativa_b = "Alternativa 2"
  perguntas3.alternativa_c = "Alternativa 3"
  perguntas3.alternativa_d = "Alternativa 4"
  perguntas3.alternativa_correta = "b"
  perguntas3.save

  perguntas4 = Perguntas.new
  perguntas4.enunciado = "Responda c"
  perguntas4.alternativa_a = "Alternativa 1"
  perguntas4.alternativa_b = "Alternativa 2"
  perguntas4.alternativa_c = "Alternativa 3"
  perguntas4.alternativa_d = "Alternativa 4"
  perguntas4.alternativa_correta = "c"
  perguntas4.save

  perguntas5 = Perguntas.new
  perguntas5.enunciado = "Responda d"
  perguntas5.alternativa_a = "Alternativa 1"
  perguntas5.alternativa_b = "Alternativa 2"
  perguntas5.alternativa_c = "Alternativa 3"
  perguntas5.alternativa_d = "Alternativa 4"
  perguntas5.alternativa_correta = "d"
  perguntas5.save
end

Dado('tenho perguntas suficientes cadastradas no banco') do
  num_perguntas = Perguntas.count(:id)
  expect(num_perguntas).to be >= 5
end

Dado('recebi as questões do jogo') do
  expect(page).to have_content 'Pergunta 1' and
    expect(page).to have_content 'Pergunta 2' and
    expect(page).to have_content 'Pergunta 3' and
    expect(page).to have_content 'Pergunta 4' and
    expect(page).to have_content 'Pergunta 5'
end

Dado('selecionei todas as alternativas corretas como resposta') do
  for i in 1..5 do
    for j in 1..4 do
      if find_field("P" + i.to_s + "alternativa" + j.to_s).value == "1"
        choose("P" + i.to_s + "alternativa" + j.to_s)
        break
      end
    end
  end
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
  for i in 1..5 do
    for j in 1..4 do
      if find_field("P" + i.to_s + "alternativa" + j.to_s).value == "0"
        choose("P" + i.to_s + "alternativa" + j.to_s)
        break
      end
    end
  end
end

Dado('selecionei na pergunta {string} a alternativa correta') do |string|
  for i in 1..4 do
    if find_field("P" + string + "alternativa" + i.to_s).value == "1"
      choose("P" + string + "alternativa" + i.to_s)
      break
    end
  end
end

Dado('selecionei na pergunta {string} a alternativa incorreta') do |string|
  for i in 1..4 do
    if find_field("P" + string + "alternativa" + i.to_s).value == "0"
      choose("P" + string + "alternativa" + i.to_s)
      break
    end
  end
end
