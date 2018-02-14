class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type1
      t.string :type2
      t.string :ability_1
      t.string :ability_2
      t.string :hidden_ability

      t.timestamps
    end
  end
end
