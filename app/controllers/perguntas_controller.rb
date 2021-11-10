class PerguntasController < ApplicationController
    def new
        @perguntas = Perguntas.new
      end
    
      def create
        @perguntas = Perguntas.new(perguntas_params)
        if @perguntas.save
          redirect_to @perguntas
        else
          render 'new'
        end
      end
    
      def show
        @perguntas = Perguntas.find(params[:id])
      end
    
      private
      def perguntas_params
        params.require(:perguntas).permit(:email, :senha)
      end
end
