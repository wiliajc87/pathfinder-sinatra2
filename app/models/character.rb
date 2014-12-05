class Character < ActiveRecord::Base
  attr_accessor :stats
  include Ability_Score_Bonus
  include Die_Roller
  belongs_to :user
  has_many :character_classes
  has_one :race
  validates :name, presence: true
  self.ability_score_generator("random")
end
