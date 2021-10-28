class Usuario < ApplicationRecord
  validates :email, presence: { message: "É obrigatório informar o email!" },
            format: { with: URI::MailTo::EMAIL_REGEXP, message: "Formato de e-mail inválido!" }
  validates :senha, presence: { message: "É obrigatório informar a senha!" }
end
