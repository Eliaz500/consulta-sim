Feature: CRUD do Medico
  As a Medico do site
  I want to me cadastrar, editar, consultar e excluir meus dados
  So that para manter meus dados atualizados


  Scenario: cadastrar Medico
    Given estou na tela de criar Medico
    When eu preencho os campos de nome com 'Dr Araujo', com o CPF '11155577788', com o email 'araujo@hotmail.com', com a Especialidade 'Pediatra' e com o CRM '1212PE'
    And clico em Create Medico
    Then Eu vejo a pagina do Medico 'Dr Araujo'

  Scenario: cadastrar medico com nome invalido
    Given estou na tela de criar Medico
    When eu preencho os campos de nome com '', com o CPF '11155577788', com o email 'araujo@hotmail.com', com a Especialidade 'Pediatra' e com o CRM '1212PE'
    And clico em Create Medico
    Then Eu vejo a mesagem "Nome completo can't be blank"

  Scenario: consultar paciente
    Given estou na tela de Medicos
    And clico no medico "Dr Araujo"
    Then Eu vejo os dados do medico "Dr Araujo"

  Scenario: Editar medico
    Given estou na tela do Medicos "Dr Araujo"
    And clico em editar
    When eu preencho o campo do nome do medico com "Dr Araujo Farias"
    And clico em Update Medico
    Then Eu vejo os dados do medico com o novo nome "Dr Araujo Farias"
