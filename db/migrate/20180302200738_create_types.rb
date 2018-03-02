require 'csv'

class CreateTypes < ActiveRecord::Migration[5.1]
  def up
    create_table :types do |t|
      t.string :name

      t.timestamps
    end

    CSV.foreach("#{Rails.root}/db/seedData/CSVPkdx V5.14.csv", headers: true) do |row|
      Type.find_or_create_by(name: row["Type I"])
      Type.find_or_create_by(name: row["Type II"])
    end
  end

  def down
    drop_table :types
  end
end
