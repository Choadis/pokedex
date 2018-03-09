require 'csv'

class CreateTypes < ActiveRecord::Migration[5.1]
  def up
    create_table :types do |t|
      t.string :name

      t.timestamps
    end

  def down
    drop_table :types
  end
end
