Given('estou na tela de criar Medico') do
  visit new_medico_path
end

When('eu preencho os campos de nome com {string}, com o CPF {string}, com o email {string}, com a Especialidade {string} e com o CRM {string}') do |nome, cpf, email, especialidade, crm|

  # Espero o formulario ser carregado
  expect(page).to have_xpath("//*[@id='medico_nome_completo']")

  #Preenche os campos"
  fill_in 'medico[nome_completo]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm

end

When('clico em Create Medico') do
  click_button 'Create Medico'
end

Then('Eu vejo a pagina do Medico {string}') do |nome|
  # Espero a página do Medico ser carregado
  expect(page).to have_content(nome)
end

Given('estou na tela de Medicos') do
  visit medicos_path
end

Given('clico no medico {string}') do |nome|
  # Vejo se a pagina foi carregada
  expect(page).to have_xpath("/html/body/h1")

  click_link nome
end

Then('Eu vejo os dados do medico {string}') do |nome|
  # Espero a página do medico ser carregado
  expect(page).to have_content(nome)
end

Given('estou na tela do Medicos {string}') do |nome|
  visit "/medicos/#{Medico.find_by(nome_completo: nome).id}"
end

When('eu preencho o campo do nome do medico com {string}') do |nome|
  # Espero o formulario ser carregado
  expect(page).to have_xpath("/html/body/h1")

  #Preenche os campos"
  fill_in 'medico[nome_completo]', :with => nome
end

When('clico em Update Medico') do
  click_button 'Update Medico'
end

Then('Eu vejo os dados do medico com o novo nome {string}') do |nome|
  # Espero a página do paciente ser carregado
  expect(page).to have_content(nome)
end







