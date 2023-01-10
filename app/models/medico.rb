class Medico < ApplicationRecord

  has_many :consulta_medicas

  validates :nome_completo, presence: true, length: { minimum: 12}
  validates :cpf, presence: true, length: { minimum: 11}
  validates :email, presence: true, length: { minimum: 12}
  validates :especialidade, presence: true, length: { minimum: 5}
  validates :crm, presence: true, length: { minimum: 6}
end
