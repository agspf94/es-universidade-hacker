class CreatePerguntas < ActiveRecord::Migration[6.1]
  def change
    create_table :perguntas do |t|
      t.string :enunciado
      t.string :alternativa_a
      t.string :alternativa_b
      t.string :alternativa_c
      t.string :alternativa_d
      t.string :alternativa_correta

      t.timestamps
    end
  end
end
