class PacientesController < ApplicationController
  def index
    @pacientes = Paciente.all
  end

  def show
    @paciente = Paciente.find(params[:id])
  end

  def new
    @paciente = Paciente.new
  end

  def create
    @paciente = Paciente.new(paciente_params)

    if @paciente.save
      redirect_to @paciente
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def paciente_params
      params.require(:paciente).permit(:nome_completo, :data_nascimento, :cpf, :email)

    end
end
