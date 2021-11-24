Então('devo visualizar uma lista com {int} jogadores') do |int|
  expect(page).to have_content "1."
  expect(page).to have_content "2."
  expect(page).to have_content "3."
end

Quando('acesso a pagina  {string}') do |string|
  # visit "/ranking"
  pending
end

