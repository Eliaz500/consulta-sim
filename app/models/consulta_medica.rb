class ConsultaMedica < ApplicationRecord
  belongs_to :medico
  belongs_to :paciente

  STATUSES = %w(agendada cancelada atendida)

  validates :data, presence: true
  validates :horario, presence: true
end
