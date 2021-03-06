require 'rails_helper'
require 'spec_helper'
RSpec.describe Usuario, type: :model do

  it 'invalido sem email' do
    usuario = Usuario.new
    usuario.senha = "123456"
    usuario.nome = "ronaldo"
    expect(usuario).not_to be_valid
  end
  it 'invalido sem senha' do
    usuario = Usuario.new
    usuario.email = "teste@gmail.com"
    usuario.nome = 'ronaldo'
    expect(usuario).not_to be_valid
  end
  it 'invalido sem nome' do
    usuario = Usuario.new
    usuario.senha = "123456"
    usuario.email = "teste@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido com email no formato nao suportado' do
    usuario = Usuario.new
    usuario.email = "a,@gmail.com"
    usuario.senha = "123456"
    usuario.nome = "ronaldo"
    expect(usuario).not_to be_valid
  end

end
