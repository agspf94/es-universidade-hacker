class Perguntas < ApplicationRecord
    validates :enunciado, presence: { message: ":É obrigatório informar o enunciado!" }
    validates :alternativa_a, presence: { message: ":É obrigatório informar a alternativa A!" }
    validates :alternativa_b, presence: { message: ":É obrigatório informar a alternativa B!" }
    validates :alternativa_c, presence: { message: ":É obrigatório informar a alternativa C!" }
    validates :alternativa_d, presence: { message: ":É obrigatório informar a alternativa D!" }
    validates :alternativa_correta, presence: { message: ":É obrigatório informar a alternativa correta!" }
end
