Given('estou na tela de agendar consulta medica') do
  visit new_consulta_medica_path
end

When('eu preencho os campos de data com {string}, horario com {string}, paciente com {string}, medico com {string} e status {string}') do |data, horario, paciente, medico, status|

  # Espero o formulario ser carregado
  expect(page).to have_xpath("//*[@id='consulta_medica_data']")

  #Preenche os campos"
  fill_in 'consulta_medica[data]', :with => data
  fill_in 'consulta_medica[horario]', :with => horario
  select(paciente, :from => 'consulta_medica[paciente_id]')
  select(medico, :from => 'consulta_medica[medico_id]')
  select(status, :from => 'consulta_medica[status]')

end

When('clico em Create Consulta Medica') do
  click_button 'Create Consulta medica'
end

Then('Eu vejo a pagina da {string}') do |string|
  # Espero a página consulta medica ser carregada
  expect(page).to have_content(string)

end

Given('estou na tela de Consulta Agendadas') do
  visit consulta_medicas_path
end

Given('clico na consulta medica de data {string}') do |data|
  #Vejo se a pagina foi carregada
  expect(page).to have_content("Consultas Médicas")
  click_link data
end

Then('Eu vejo os dados da consulta') do
  # Espero a página da consulta ser carregada
  expect(page).to have_content("Consulta")
end

Given('estou na tela da Consulta do dia {string}') do |data|
  visit "/consulta_medicas/#{ConsultaMedica.find_by(data: data).id}"
end

When('eu preencho os campos de data com {string}') do |data|
  # Espero o formulario ser carregado
  expect(page).to have_xpath("/html/body/h1")

  #Preenche o campo"
  fill_in 'consulta_medica[data]', :with => data

end

When('clico em Update Consulta medica') do
  click_button 'Update Consulta medica'
end

Then('Eu vejo os dados da consulta editada') do
  # Espero a página da consulta ser carregada
  expect(page).to have_content("Consulta")
end







