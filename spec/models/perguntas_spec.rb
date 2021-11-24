require 'rails_helper'
require 'spec_helper'
RSpec.describe Perguntas, type: :model do

  it 'invalido sem enunciado' do
    perguntas = Perguntas.new
    perguntas.alternativa_a = "2"
    perguntas.alternativa_b = "3"
    perguntas.alternativa_c = "4"
    perguntas.alternativa_d = "5"
    perguntas.alternativa_correta = "6"
    expect(perguntas).not_to be_valid
  end

  it 'invalido sem alternativa_correta' do
    perguntas = Perguntas.new
    perguntas.enunciado = "1"
    perguntas.alternativa_a = "2"
    perguntas.alternativa_b = "3"
    perguntas.alternativa_c = "4"
    perguntas.alternativa_d = "5"
    expect(perguntas).not_to be_valid
  end

  it 'invalido sem alternativas' do
    perguntas = Perguntas.new
    perguntas.enunciado = "1"
    expect(perguntas).not_to be_valid
  end

end
