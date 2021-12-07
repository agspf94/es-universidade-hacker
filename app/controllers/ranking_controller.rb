class RankingController < ApplicationController
  def index
    @usuarios = Usuario.all.order(bestscore: :desc).pluck(:nome, :email)
  end
end
