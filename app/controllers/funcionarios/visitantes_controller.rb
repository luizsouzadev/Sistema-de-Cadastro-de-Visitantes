module Funcionarios
  class VisitantesController < ApplicationController
  before_action :set_visitante, only: %i[ show edit update destroy ]

  # GET /visitantes or /visitantes.json
  def index
    @visitantes = Visitante.all
  end

  # GET /visitantes/1 or /visitantes/1.json
  def show
  end

  # GET /visitantes/new
  def new
    @visitante = Visitante.new
  end

  # GET /visitantes/1/edit
  def edit
  end

  # POST /visitantes or /visitantes.json
  def create
    @visitante = Visitante.new(visitante_params)

    respond_to do |format|
      if @visitante.save
        format.html { redirect_to funcionarios_visitante_url(@visitante), notice: "Visitante was successfully created." }
        format.json { render :show, status: :created, location: @visitante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitantes/1 or /visitantes/1.json
  def update
    @visitante = Visitante.find(params[:id])

    if @visitante.update(visitante_params)
      redirect_to alguma_rota_path, notice: 'Visitante foi atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /visitantes/1 or /visitantes/1.json
  def destroy
    @visitante.destroy!

    respond_to do |format|
      format.html { redirect_to funcionarios_visitantes_url, notice: "Visitante was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitante
      @visitante = Visitante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visitante_params
      params.require(:visitante).permit(:nome, :cpf, :rg, :telefone, :foto)
    end

    def consultar_visitante
      cpf = params[:cpf]
      @visitante = Visitante.find_by(cpf: cpf)

      if @visitante
        # Exibir detalhes do visitante
        render 'consultar'
      else
        # Redirecionar para a página de cadastro de visitantes ou exibir uma mensagem adequada
        flash[:alert] = 'Visitante não encontrado.'
        redirect_to new_visitante_path

      end
    end
  end
end
