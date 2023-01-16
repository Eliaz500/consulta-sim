class Paciente < ApplicationRecord
  has_one :endereco
  has_many :consulta_medicas

  accepts_nested_attributes_for :endereco , update_only: true

  validates :nome_completo, presence: true, length: { minimum: 3, maximum: 30}, format: { with: /\A[^0-9]+\z/ }
  validates :data_nascimento, presence: true, length: { minimum: 10 , maximum: 10}
  validate :data_nascimento_validation


  validates :cpf, presence: true, uniqueness: true, length: { minimum: 11 , maximum: 11}, format: { with: /\A\d{11,11}\z/}
  validates :email, presence: true, uniqueness: true, length: { minimum: 4, maximum: 20}, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.com\z/i }

  def data_nascimento_validation
    if data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data_nascimento, "não pode ser posterior a hoje")
    end
  end
end
