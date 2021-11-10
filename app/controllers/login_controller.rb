class LoginController < ApplicationController
  def new
  end
  def create
    if(:Email.empty?)
      render js: "alert('É obrigatório informar o e-mail!');"
    elsif (:Senha.empty?)
      render js: "alert('É obrigatório informar a senha!');"
    else
      #usuario = Usuario.find_by_email(params[:aluno])
      usuario = Usuario.find_by(email: usuario_params[:email])
      #Model.find_by(name: "Bob")
      if(usuario)
        render js: "alert('Usuario Logado');"
      else
        render js: "alert('Email/Senha inválido!');" + usuario_params[:email]
      end
    end
  end
  private
  def usuario_params
    params.require(:usuario).permit(:email, :senha)
  end
end
