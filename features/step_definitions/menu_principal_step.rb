Dado('que estou na página de menu principal') do
  visit '/menu_principal'
end

Dado('possuo questões suficientes cadastradas') do
  perguntas1 = Perguntas.new
  perguntas1.enunciado = "Responda a"
  perguntas1.alternativa_a = "Alternativa 1"
  perguntas1.alternativa_b = "Alternativa 2"
  perguntas1.alternativa_c = "Alternativa 3"
  perguntas1.alternativa_d = "Alternativa 4"
  perguntas1.alternativa_correta = "a"
  perguntas1.save

  perguntas2 = Perguntas.new
  perguntas2.enunciado = "Responda a"
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

Dado('não possuo questões suficientes cadastradas') do
  perguntas1 = Perguntas.new
  perguntas1.enunciado = "Responda a"
  perguntas1.alternativa_a = "Alternativa 1"
  perguntas1.alternativa_b = "Alternativa 2"
  perguntas1.alternativa_c = "Alternativa 3"
  perguntas1.alternativa_d = "Alternativa 4"
  perguntas1.alternativa_correta = "a"
  perguntas1.save
end

Quando('clico em jogar') do
  click_on 'Novo Jogo'
end

Então('devo ser redirecionado para a página inicial do jogo') do
  expect(page).to have_content 'Pergunta 1'
end

Então('devo permanecer na página de menu principal') do
  expect(page).to have_content 'Menu Principal'
end

Quando('clico em sair') do
  click_on 'Logout'
end