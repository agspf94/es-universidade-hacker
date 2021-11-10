class CreatePartidas < ActiveRecord::Migration[6.1]
  def change
    create_table :partidas do |t|
      t.integer :pontuacao

      t.timestamps
    end
  end
end
