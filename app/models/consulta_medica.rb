class ConsultaMedica < ApplicationRecord
  belongs_to :medico
  belongs_to :paciente

  validates :data, presence: true
  validates :horario, presence: true
end
