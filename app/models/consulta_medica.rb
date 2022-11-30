class ConsultaMedica < ApplicationRecord
  validates :data, presence: true
  validates :horario, presence: true
end
