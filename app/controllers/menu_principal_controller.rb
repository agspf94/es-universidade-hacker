class MenuPrincipalController < ApplicationController
  def index
    if session[:usuario_id]
      @usuario = Usuario.find(session[:usuario_id])
      @usuario_nome = @usuario.nome
      @usuario_email = @usuario.email
      @usuario_display_text = ""
      if @usuario_nome.nil?
        @usuario_display_text = @usuario_email
      else
        @usuario_display_text = @usuario_nome
      end

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
