class Paciente < ApplicationRecord
  has_one :endereco
  has_many :consulta_medicas

  accepts_nested_attributes_for :endereco , update_only: true

  validates :nome_completo, presence: true, length: { minimum: 3}
  validates :data_nascimento, presence: true, length: { minimum: 3}
  validates :cpf, presence: true, length: { minimum: 3}
  validates :email, presence: true, length: { minimum: 3}
end
