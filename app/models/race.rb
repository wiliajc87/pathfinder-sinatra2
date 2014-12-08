module Race
  def ability_score_bonus?
    @character = session[:character_id]
    if @character.race == "human" || @character.race == "halforc" || @character.race == "halfelf"
    asb_message1
    @which_ability = gets.chomp.to_sym
    if @stats.has_key?(@which_ability)
      @stats.update(@stats){|key, value| key == @which_ability ? value += 2 : value}
    end
    asb_message2
  elsif @character.race == "dwarf"

  end
  end

  def asb_message1
    "Your selection grants you a +2 bonus to an ability score--which one would you like to apply this bonus to?"
  end

  def asb_message2
    "Your #{@which_ability} has been increased by 2!"
  end

end
