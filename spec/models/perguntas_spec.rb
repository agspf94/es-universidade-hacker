require 'rails_helper'
require 'spec_helper'
RSpec.describe Perguntas, type: :model do

  it 'invalido sem enunciado' do
    perguntas = Perguntas.new
    perguntas.alternativa_a = "teste@gmail.com"
    perguntas.alternativa_b = "teste@gmail.com"
    perguntas.alternativa_c = "teste@gmail.com"
    perguntas.alternativa_d = "teste@gmail.com"
    perguntas.alternativa_correta = "teste@gmail.com"
    expect(perguntas).not_to be_valid
  end

  it 'invalido sem alternativa_correta' do
    perguntas = Perguntas.new
    perguntas.enunciado = "teste@gmail.com"
    perguntas.alternativa_a = "teste@gmail.com"
    perguntas.alternativa_b = "teste@gmail.com"
    perguntas.alternativa_c = "teste@gmail.com"
    perguntas.alternativa_d = "teste@gmail.com"
    expect(perguntas).not_to be_valid
  end

end
