require 'rails_helper'
require 'spec_helper'
RSpec.describe Pergunta, type: :model do

  it 'invalido sem enunciado' do
    pergunta = Pergunta.new
    pergunta.alternativas = ["A"]
    expect(pergunta).not_to be_valid
  end

  it 'invalido sem alternativa' do
    pergunta = Pergunta.new
    pergunta.enunciado = "teste"
    expect(pergunta).not_to be_valid
  end

  # it 'invalido com email no formato nao suportado' do
  #   usuario = Usuario.new
  #   usuario.email = "a,@gmail.com"
  #   usuario.senha = "123456"
  #   expect(usuario).not_to be_valid
  # end
end