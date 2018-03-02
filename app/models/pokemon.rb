class Pokemon < ApplicationRecord
  has_many :types
  has_many :abilities
end
# CSV.foreach("/Users/smdahlgren171/Downloads/CSVPkdx V5.14.csv", :headers => true) do |row|
#   type1 = Type.find_by(name: row['Type I'])
#   type2 = Type.find_by(name: row['Type II'])
#   ability1 = Ability.find_by(name: row['Ability I'])
#   ability2 = Ability.find_by(name: row ['Ability II'])
#   hidden = Ability.find_by(name: row['Hidden Ability'])
#   Pokemon.create(name: row['Pokemon'], types: [type1, type2].compact, abilities: [ability1, ability2, hidden].compact)
#  end
