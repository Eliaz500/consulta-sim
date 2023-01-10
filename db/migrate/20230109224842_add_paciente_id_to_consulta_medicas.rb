class AddPacienteIdToConsultaMedicas < ActiveRecord::Migration[7.0]
  def change
    add_column :consulta_medicas, :paciente_id, :integer
  end
end
