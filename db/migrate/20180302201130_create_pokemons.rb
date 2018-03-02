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

    CSV.foreach("#{Rails.root}/db/seedData/CSVPkdx V5.14.csv", :headers => true) do |row|
      type1 = Type.find_by(name: row['Type I'])
      type2 = Type.find_by(name: row['Type II'])
      ability1 = Ability.find_by(name: row['Ability I'])
      ability2 = Ability.find_by(name: row ['Ability II'])
      hidden = Ability.find_by(name: row['Hidden Ability'])
      Pokemon.create(name: row['Pokemon'], type1: type1, type2: type2, abilities: [ability1, ability2, hidden].compact)
    end
  end

  def down
    drop_table :pokemons
    drop_table :pokemon_abilities
  end
end
