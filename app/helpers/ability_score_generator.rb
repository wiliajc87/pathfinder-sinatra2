helpers do
  def ability_score_generator(version)
    if version == "random"
      [:charisma, :strength, :intelligence, :wisdom, :dexterity, :constitution].each do|key|
        until stats[key] >= 8
              stats[key] = die_roller(6,3).inject{|sum, die| sum += die}
            end
        end
      end
    end
end
