class CharacterClass < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
end
