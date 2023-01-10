class ChangeDataAndHorarioToDateAndTime < ActiveRecord::Migration[7.0]
  def change
    change_column :consulta_medicas, :data, :date
    change_column :consulta_medicas, :horario, :time
  end
end
