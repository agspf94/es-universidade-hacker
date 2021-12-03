Dado('que estou na página de cadastro de pergunta') do
  visit '/perguntas/new'
end

Então('ela deve ter sido salva no banco de dados') do
  perguntas = Perguntas.order("id").last
  expect(perguntas.enunciado).to eq('1')
  expect(perguntas.alternativa_a).to eq('2')
  expect(perguntas.alternativa_b).to eq('3')
  expect(perguntas.alternativa_c).to eq('4')
  expect(perguntas.alternativa_d).to eq('5')
  expect(perguntas.alternativa_correta).to eq('a')
end

Então('deverei ver a pergunta na página de listagem de perguntas') do
  expect(page).to have_content('1')
  expect(page).to have_content('2')
  expect(page).to have_content('3')
  expect(page).to have_content('4')
  expect(page).to have_content('5')
  expect(page).to have_content('a')
end