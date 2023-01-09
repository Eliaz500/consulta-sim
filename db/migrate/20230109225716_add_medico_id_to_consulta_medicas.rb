class AddMedicoIdToConsultaMedicas < ActiveRecord::Migration[7.0]
  def change
    add_column :consulta_medicas, :medico_id, :integer
  end
end
