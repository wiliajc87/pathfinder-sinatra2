class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :character_classes, through: :proficiencies
end
