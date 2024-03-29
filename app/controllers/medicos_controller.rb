class MedicosController < ApplicationController
  def index
    @medicos = Medico.all
  end
  def show
    @medico = Medico.find(params[:id])
    @cpf_formatado = @medico.cpf.to_s.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    @consultas_agendadas = @medico.consulta_medicas.where(status: 'Agendada')
  end

  def new
    @medico = Medico.new

  end

  def create
    @medico = Medico.new(medico_params)

    if @medico.save
      redirect_to @medico
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @medico = Medico.find(params[:id])
  end

  def update
    @medico = Medico.find(params[:id])

    if @medico.update(medico_params)
      redirect_to @medico
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def medico_params
      params.require(:medico).permit(:nome_completo, :cpf, :email, :especialidade, :crm)
    end
end
