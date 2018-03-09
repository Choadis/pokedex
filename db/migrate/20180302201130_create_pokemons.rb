require 'csv'

class CreatePokemons < ActiveRecord::Migration[5.1]
  def up
    create_table :pokemons do |t|
      t.string :name
      t.integer :type1_id
      t.integer :type2_id
      t.timestamps

    end

    add_foreign_key :pokemons, :types, column: :type1_id, primary_key: "id"
    add_foreign_key :pokemons, :types, column: :type2_id, primary_key: "id"

    create_table :pokemon_abilities  do |t|
      t.belongs_to :pokemon, foreign_key: true
      t.belongs_to :ability, foreign_key: true
      t.timestamps
    end

  def down
    drop_table :pokemons
    drop_table :pokemon_abilities
  end
end
