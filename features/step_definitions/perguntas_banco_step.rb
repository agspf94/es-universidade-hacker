Então('deverei ver as perguntas cadastradas anteriormente') do
  expect(page).to have_content 'Responda a' and
    expect(page).to have_content 'Responda a, por favor' and
    expect(page).to have_content 'Responda b' and
    expect(page).to have_content 'Responda c' and
    expect(page).to have_content 'Responda d'
end