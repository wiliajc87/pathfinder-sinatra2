class Character < ActiveRecord::Base
  belongs_to :player
  has_many :character_classes
  has_one :race

  validates :name, presence: true, uniqueness: true
end
