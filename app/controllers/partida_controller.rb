class PartidaController < ApplicationController
  def new
    @partida = Partida.new
  end
  def create
    @partida = Partida.new(partida_params)
    @partida.save
  end
  def pontuacao
    @partida = Partida.find(params[:id])
  end
  private
  def partida_params
    params.require(:partida).permit(:age)
  end
end
