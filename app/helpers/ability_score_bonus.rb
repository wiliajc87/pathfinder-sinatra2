helpers do
  def ability_score_bonus
    puts "Your selection grants you a +2 bonus to an ability score--which one would you like to apply this bonus to?"
    @which_ability = gets.chomp.to_sym
    if @stats.has_key?(@which_ability)
      @stats.update(@stats){|key, value| key == @which_ability ? value += 2 : value}
    end
    message
  end
  def message
    puts "Your #{@which_ability} has been increased by 2!"
  end
end
