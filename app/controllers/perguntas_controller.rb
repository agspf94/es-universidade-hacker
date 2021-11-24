class PerguntasController < ApplicationController

    def new
      @perguntas = Perguntas.new
    end

    def index
      @perguntas = Perguntas.all
    end
    
    def create
       @perguntas = Perguntas.new(perguntas_params)
       if @perguntas.save
         redirect_to @perguntas
       else
         render 'new'
       end
    end

    def destroy
      @perguntas = Perguntas.find(params[:id])
      @perguntas.destroy

      # flash.notice="Article '#{@perguntas.title}' was deleted"

      redirect_to '/perguntas/new'

    end

    def edit

      @perguntas = Perguntas.find(params[:id])

    end

    def update

      @perguntas = Perguntas.find(params[:id])
      @perguntas.update(enunciado: params[:perguntas][:enunciado], alternativa_a: params[:perguntas][:alternativa_a],
                       alternativa_b: params[:perguntas][:alternativa_b], alternativa_c: params[:perguntas][:alternativa_c],
                       alternativa_d: params[:perguntas][:alternativa_d], alternativa_correta: params[:perguntas][:alternativa_correta])

      redirect_to '/perguntas/' + params[:id]

    end
    
    def show
       @perguntas = Perguntas.find(params[:id])
    end
    
    private
    def perguntas_params
       params.require(:perguntas).permit(:enunciado, :alternativa_a, :alternativa_b, :alternativa_c, :alternativa_d, :alternativa_correta)
    end

end
