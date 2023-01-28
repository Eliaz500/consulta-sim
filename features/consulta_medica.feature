Feature: Consulta medica
  As a como paciente do site
  I want to agendar uma consulta medica
  So that eu possa ser atendido por um medico

  Scenario: Agendar Consulta Medica
    Given estou na tela de agendar consulta medica
    When eu preencho os campos de data com '25/05/2023', horario com '10:10', paciente com 'Lidyane Lopes', medico com 'Dr Araujo' e status 'Agendada'
    And clico em Create Consulta Medica
    Then Eu vejo a pagina da 'Consulta'

  Scenario: agendar consulta com data invalida
    Given estou na tela de agendar consulta medica
    When eu preencho os campos de data com '25/01/2023', horario com '10:10', paciente com 'Lidyane Lopes', medico com 'Dr Araujo' e status 'Agendada'
    And clico em Create Consulta Medica
    Then Eu vejo a mesagem "Data inválida!"

  Scenario: consultar as consultas agendadas
    Given estou na tela de Consulta Agendadas
    And clico na consulta medica de data '05-05-2023'
    Then Eu vejo os dados da consulta

  Scenario: Editar Consulta Medica
    Given estou na tela da Consulta do dia "05-05-2023"
    And clico em editar
    When eu preencho os campos de data com "12/10/2023"
    And clico em Update Consulta medica
    Then Eu vejo os dados da consulta editada
