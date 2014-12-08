class Character < ActiveRecord::Base
  attr_accessor :stats
  belongs_to :user
  has_many :character_classes
  validates :name, presence: true
  include Race
  def die_roller(sides, die_in_hand = 1)
    die_in_hand = die_in_hand
    @result = []
    sides = (1..sides).to_a
      die_in_hand.times do
        @result << sides.sample
      end
    return @result
  end
  def ability_score_generator
    @character = self
      until @character.charisma >= 8
            @character.update(charisma: die_roller(6,3).inject{|sum, die| sum += die})
      end
        until @character.strength >= 8
            @character.update(strength: die_roller(6,3).inject{|sum, die| sum += die})
      end
        until @character.wisdom >= 8
            @character.update(wisdom: die_roller(6,3).inject{|sum, die| sum += die})
      end
        until @character.dexterity >= 8
            @character.update(dexterity: die_roller(6,3).inject{|sum, die| sum += die})
      end
        until @character.intelligence >= 8
            @character.update(intelligence: die_roller(6,3).inject{|sum, die| sum += die})
      end
        until @character.constitution >= 8
            @character.update(constitution: die_roller(6,3).inject{|sum, die| sum += die})
      end
  end
end