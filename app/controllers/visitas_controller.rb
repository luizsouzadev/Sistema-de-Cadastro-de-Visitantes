class VisitasController < ApplicationController
  before_action :authenticate_usuario! # Certifique-se de que apenas usuários autenticados podem acessar

  def new
    @visita = Visita.new
  end

  def create
    @visita = Visita.new(visita_params)

    if @visita.save
      redirect_to @visita, notice: 'Visita registrada com sucesso.'
    else
      render :new
    end
  end

  def show
    @visita = Visita.find(params[:id])
  end

  private

  def visita_params
    params.require(:visita).permit(:visitante_id, :setor_id, :funcionario_id, :data_hora)
  end

  def registrar_visita
    redirect_to root_path, notice: 'Visita registrada com sucesso.'
  end
end
