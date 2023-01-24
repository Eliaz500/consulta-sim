require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "criar medico" do
    medico = Medico.new(nome_completo:"Dr Pedro Araujo", cpf:"77744411166", email:"pedro@gmail.com", especialidade:"Pediatra", crm:"2212PE")
    assert medico.save
  end

  test "criar medico com nome invalido" do
    medico = Medico.new(nome_completo:"32322", cpf:"77744411166", email:"pedro@gmail.com", especialidade:"Pediatra", crm:"2212PE")
    assert_not medico.save
  end
end
