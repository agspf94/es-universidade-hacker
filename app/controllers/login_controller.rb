class LoginController < ApplicationController
  def new
  end
  def create
    if(:Email.empty?)
      render js: "alert('É obrigatório informar o e-mail!');"
    elsif (:Senha.empty?)
      render js: "alert('É obrigatório informar a senha!');"
    else
      aluno = Aluno.find_by_email(params[:aluno])
      if(aluno)
        render js: "alert('Aluno Logado');"
      else
        render js: "alert('Email/Senha inválido!');"
      end
    end
  end
end
