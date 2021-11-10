class Pergunta < ApplicationRecord
  validates :enunciado, presence: { message: "É obrigatório preencher o enunciado!" }
  validates :alternativas, presence: { message: "É obrigatório preencher pelo menos uma alternativa!" }
end

