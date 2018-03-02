class Pokemon < ApplicationRecord
  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities

  belongs_to :type1, :foreign_key => :type1_id, :class_name => 'Type'
  belongs_to :type2, :foreign_key => :type2_id, :class_name => 'Type'
end
