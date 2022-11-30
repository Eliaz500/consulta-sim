class ConsultaMedicasController < ApplicationController
  def index
    @consulta_medicas = ConsultaMedica.all
  end

  def show
    @consulta_medica = ConsultaMedica.find(params[:id])
  end

  def new
    @consulta_medica = ConsultaMedica.new
  end

  def create
    @paciente = Paciente.find(params[:paciente_id])
    @consulta_medica = @paciente.consulta_medica.create(comment_params)
    @medico = Medico.find(params[:medico_id])
    @consulta_medica = @medica.consulta_medica.create(comment_params)
    @consulta_medica = ConsultaMedica.new(consulta_medica_params)

    if @consulta_medica.save
      redirect_to @consulta_medica
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @consulta_medica = ConsultaMedica.find(params[:id])
  end

  def update
    @consulta_medica = ConsultaMedica.find(params[:id])

    if @consulta_medica.update(consulta_medica_params)
      redirect_to @consulta_medica
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def consulta_medica_params
    params.require(:consulta_medica).permit(:paciente_id, :data, :horario, :medico_id)
  end
end
