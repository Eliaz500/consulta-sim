require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "criar paciente" do
    paciente = Paciente.new(nome_completo:"Elias Lima", data_nascimento:"15/10/2001", cpf:"77744411166", email:"eliaz@gmail.com")
    assert paciente.save
  end

  test "criar paciente com nome invalido" do
    paciente = Paciente.new(nome_completo:"11111111111", data_nascimento:"15/05/2010", cpf:"44488877799", email:"invalido@gmail.com")
    assert_not paciente.save
  end
end
