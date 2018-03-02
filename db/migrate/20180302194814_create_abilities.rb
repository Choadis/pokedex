require 'csv'

class CreateAbilities < ActiveRecord::Migration[5.1]

  def up
    create_table :abilities do |t|
      t.string :name

      t.timestamps
    end

    CSV.foreach("#{Rails.root}/db/seedData/CSVPkdx V5.14.csv", headers: true) do |row|
      Ability.find_or_create_by(name: row["Ability I"])
      Ability.find_or_create_by(name: row["Ability II"])
      Ability.find_or_create_by(name: row["Hidden Ability"])
    end
  end

  def down
    drop_table :abilities
  end
end
