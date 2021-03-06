class LoginController < ApplicationController
  def index
  end
  def create
    if usuario_params[:email].empty?
      render js: "É obrigatório informar o e-mail!"
    elsif usuario_params[:senha].empty?
      render js: "É obrigatório informar a senha!"
    else
      #usuario = Usuario.find_by_email(params[:aluno])
      usuario = Usuario.find_by(email: usuario_params[:email])
      #Model.find_by(name: "Bob")
      if usuario
        if usuario.senha == usuario_params[:senha]
          session[:usuario_id] = usuario.id
          redirect_to menu_principal_index_path
        else
          render js: "Email/Senha inválido!"
        end
      else
        render js: "Email/Senha inválido!"
      end
    end
  end
  private
  def usuario_params
    params.require(:usuario).permit(:email, :senha)
  end
end
