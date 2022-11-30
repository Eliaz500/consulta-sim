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
    params.require(:consulta_medica).permit(:data, :horario)
  end
end
