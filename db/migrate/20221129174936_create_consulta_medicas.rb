class CreateConsultaMedicas < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta_medicas do |t|
      t.date :data
      t.time :horario
      t.references :paciente, foreign_key: true
      t.references :medico, foreign_key: true

      t.timestamps
    end
  end
end
