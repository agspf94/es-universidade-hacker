class MenuPrincipalController < ApplicationController
  def index
    if session[:usuario_id]
      @usuario = Usuario.find(session[:usuario_id]).email
      @btnclass = "btn default"
      @disable = nil
      if Perguntas.count(:id) < 5
        @btnclass = "btnd disabled"
        @disable = true
      end
    end
  end
  def partida
    render 'partida/index'
  end
end
