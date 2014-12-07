class Stat < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_stats
end
