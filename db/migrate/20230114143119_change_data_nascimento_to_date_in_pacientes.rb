class ChangeDataNascimentoToDateInPacientes < ActiveRecord::Migration[7.0]
  def change
    change_column :pacientes, :data_nascimento, :date
  end
end
