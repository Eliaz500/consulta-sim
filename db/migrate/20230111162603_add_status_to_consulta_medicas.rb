class AddStatusToConsultaMedicas < ActiveRecord::Migration[7.0]
  def change
    add_column :consulta_medicas, :status, :string
  end
end
