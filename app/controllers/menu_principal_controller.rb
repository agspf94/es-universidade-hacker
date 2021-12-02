class MenuPrincipalController < ApplicationController
  def index
    if session[:usuario_id]
      @usuario = Usuario.find(session[:usuario_id]).email
    end
  end
  def partida
    render 'partida/index'
  end
end
