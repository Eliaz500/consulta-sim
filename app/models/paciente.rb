class Paciente < ApplicationRecord
  validates :nome_completo, presence: true, length: { minimum: 15}
  validates :data_nascimento, presence: true, length: { minimum: 10}
  validates :cpf, presence: true, length: { minimum: 11}
  validates :email, presence: true, length: { minimum: 15}
end
