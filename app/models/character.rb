class Character < ActiveRecord::Base
  belongs_to :user
  has_many :character_classes
  has_one :race

  validates :name, presence: true
end
