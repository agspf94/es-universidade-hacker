class AddBestscoreToUsuario < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :bestscore, :int
  end
end
