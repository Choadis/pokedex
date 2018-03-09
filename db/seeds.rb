# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach("#{Rails.root}/db/seedData/CSVPkdx V5.14.csv", headers: true) do |row|
  Type.find_or_create_by(name: row["Type I"])
  Type.find_or_create_by(name: row["Type II"])
end

CSV.foreach("#{Rails.root}/db/seedData/CSVPkdx V5.14.csv", headers: true) do |row|
  Ability.find_or_create_by(name: row["Ability I"])
  Ability.find_or_create_by(name: row["Ability II"])
  Ability.find_or_create_by(name: row["Hidden Ability"])
end

CSV.foreach("#{Rails.root}/db/seedData/CSVPkdx V5.14.csv", :headers => true) do |row|
  type1 = Type.find_by(name: row['Type I'])
  type2 = Type.find_by(name: row['Type II'])
  ability1 = Ability.find_by(name: row['Ability I'])
  ability2 = Ability.find_by(name: row ['Ability II'])
  hidden = Ability.find_by(name: row['Hidden Ability'])
  Pokemon.create(name: row['Pokemon'], type1: type1, type2: type2, abilities: [ability1, ability2, hidden].compact)
end
