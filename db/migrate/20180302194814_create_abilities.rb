require 'csv'

class CreateAbilities < ActiveRecord::Migration[5.1]

  def up
    create_table :abilities do |t|
      t.string :name

      t.timestamps
    end

  def down
    drop_table :abilities
  end
end
