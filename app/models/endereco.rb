class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :cep, presence: true,  format: { with: /\A[0-9]{8}\z/, message: "só aceita números" }
  validates :cidade, presence: true, length: { minimum: 3, maximum: 20}
  validates :bairro, presence: true, length: { minimum: 3, maximum: 20}
  validates :logradouro, presence: true, length: { minimum: 3, maximum: 30}

end
