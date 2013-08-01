class BowlingGame

  def initialize 
    @rolls = []
  end

# Records rolls.
# pins = # of pins knocked down this roll
  def roll(pins)
    @rolls.push(pins)
  end

# Returns integer score for the game
  def score
    @rolls.reduce(:+)
  end

end
