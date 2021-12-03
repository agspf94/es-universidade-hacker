class RankingController < ApplicationController
  def index
    @usuarios = Usuario.all.order(bestscore: :desc).pluck(:email)
  end
end
