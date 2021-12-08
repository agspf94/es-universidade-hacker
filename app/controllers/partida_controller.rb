class PartidaController < ApplicationController
  def new
    @partida = Partida.new
  end
  def create
    @partida = Partida.new(partida_params)
    @partida.save
  end

  def resultado
    if session[:usuario_id]
      @usuario = Usuario.find(session[:usuario_id])
    else
      render 'Não foi possível encontrar usuário'
    end

    @res = "false"
    @pontuacao = params[:partida]["alternativas1"].to_i + params[:partida]["alternativas2"].to_i + params[:partida]["alternativas3"].to_i + params[:partida]["alternativas4"].to_i + params[:partida]["alternativas5"].to_i


    if @pontuacao > @usuario.bestscore
      @usuario.update(email: @usuario.email, senha: @usuario.senha, bestscore: @pontuacao, nome: @usuario.nome)
      @res = "true"
    end

  end

  def index
    perguntas = Perguntas.select(:id, :enunciado, :alternativa_a, :alternativa_b, :alternativa_c, :alternativa_d, :alternativa_correta)
    num_perguntas = Perguntas.count(:id)
    a = (0..num_perguntas-1).to_a.shuffle
    @perguntas_quiz = Array.new(5)
    begin
      for i in 0..4 do
        @perguntas_quiz[i] = perguntas[a.pop]
        @cont_pergunta = 1
      end
    rescue
      redirect_to menu_principal_index_path
    end
  end

  def pontuacao
    @partida = Partida.find(params[:id])
  end
  private
  def partida_params
    params.require(:partida).permit(:age)
  end
end
