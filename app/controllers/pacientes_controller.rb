class PacientesController < ApplicationController
  def index
    @pacientes = Paciente.all
  end

  def show
    @paciente = Paciente.find(params[:id])
    @cpf_formatado = @paciente.cpf.to_s.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    @data_formatada = @paciente.data_nascimento.strftime("%d-%m-%Y")
    @cep_formatado = @paciente.endereco.cep.insert(5, '-')
    @cidade_formatada = @paciente.endereco.cidade.mb_chars.titleize.to_s
    @bairro_formatado = @paciente.endereco.bairro.mb_chars.titleize.to_s
    @logradouro_formatado = @paciente.endereco.logradouro.mb_chars.titleize.to_s
    @complemento_formatado = @paciente.endereco.complemento.mb_chars.titleize.to_s
  end

  def new
    @paciente = Paciente.new
    @paciente.build_endereco
  end

  def create
    @paciente = Paciente.new(paciente_params)


    if @paciente.save
      redirect_to @paciente
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @paciente = Paciente.find(params[:id])
  end

  def update
    @paciente = Paciente.find(params[:id])

    if @paciente.update(paciente_params)
      redirect_to @paciente
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def paciente_params
      params.require(:paciente).permit(:nome_completo, :data_nascimento, :cpf, :email, :endereco_attributes =>[:cep, :cidade, :bairro, :logradouro, :complemento])

    end
end
