class Medico < ApplicationRecord

  has_many :consulta_medicas

  validates :nome_completo, presence: true, length: { minimum: 3, maximum: 30}, format: { with: /\A[^0-9]+\z/ }
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d{11,11}\z/}
  validates :email, presence: true,  uniqueness: true, length: { minimum: 4, maximum: 20}, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.com\z/i }
  validates :especialidade, presence: true, length: { minimum: 3, maximum: 30}, format: { with: /\A[^0-9]+\z/ }
  validates :crm, presence: true, uniqueness: true, length: { minimum: 6, maximum: 6}

end
