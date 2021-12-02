Então('devo visualizar uma lista com {int} jogadores') do |int|
  expect(page).to have_content "1."
  expect(page).to have_content "2."
  expect(page).to have_content "3."
  expect(page).to have_content "4."
  expect(page).to have_content "5."
  expect(page).to have_content "6."
  expect(page).to have_content "7."
  expect(page).to have_content "8."
  expect(page).to have_content "9."
  expect(page).to have_content "10."
end

Quando('acesso a pagina {string}') do |string|
  visit "/ranking"
end

