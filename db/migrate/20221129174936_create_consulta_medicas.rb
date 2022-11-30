class CreateConsultaMedicas < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta_medicas do |t|
      t.string :data
      t.string :horario

      t.timestamps
    end
  end
end
