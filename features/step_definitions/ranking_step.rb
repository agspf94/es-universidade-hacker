Então('devo visualizar uma lista com jogadores') do
  expect(page).to have_content "Ranking"
end

Quando('acesso a pagina {string}') do |string|
  visit "/ranking"
end

