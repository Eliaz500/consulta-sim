require "test_helper"

class ConsultaMedicaTest < ActiveSupport::TestCase
  test "criar consulta medica" do
    #cria um paciente
    paciente = Paciente.new(nome_completo:"Elias Lima", data_nascimento:"15/10/2001", cpf:"77744411166", email:"eliaz@gmail.com")
    assert paciente.save

    #Cria um médico
    medico = Medico.new(nome_completo:"Dr Pedro Araujo", cpf:"77744411166", email:"pedro@gmail.com", especialidade:"Pediatra", crm:"2212PE")
    assert medico.save

    consulta_medica = ConsultaMedica.new(data:"23/10/2023", horario:"12:00", paciente_id:paciente.id, medico_id:medico.id, status:"Agendada")
    assert consulta_medica.save
  end

  test "criar consulta medica com horario invalido" do
    #cria um paciente
    paciente = Paciente.new(nome_completo:"Elias Lima", data_nascimento:"15/10/2001", cpf:"77744411166", email:"eliaz@gmail.com")
    assert paciente.save

    #Cria um médico
    medico = Medico.new(nome_completo:"Dr Pedro Araujo", cpf:"77744411166", email:"pedro@gmail.com", especialidade:"Pediatra", crm:"2212PE")
    assert medico.save

    consulta_medica = ConsultaMedica.new(data:"23/10/2023", horario:"7:00", paciente_id:paciente.id, medico_id:medico.id, status:"Agendada")
    assert_not consulta_medica.save
  end
end
