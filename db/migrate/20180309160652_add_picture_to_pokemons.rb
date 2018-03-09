class AddPictureToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :picture, :string
  end
end
