helpers do
  def die_roller(sides, die_in_hand = 1)
    @die_in_hand = die_in_hand
    @result = []
    @sides = (1..sides).to_a
    die_in_hand.times do
      @result << @sides.sample
    end
  return @result
  end
end


