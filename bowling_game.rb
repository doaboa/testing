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
    total_score = 0
    current_roll = 0

    while current_roll < @rolls.size - 1
      roll      = @rolls[current_roll]
      next_roll = @rolls[current_roll + 1]

      if roll == 10
        total_score += 10 + @rolls[current_roll + 1] + @rolls[current_roll + 2]
        current_roll += 1
      elsif roll + next_roll == 10
        total_score += 10 + @rolls[current_roll + 2]
        current_roll += 2
      else
        total_score += roll + next_roll
        current_roll += 2
      end

    end

    return total_score
  end

  private

  def strike
    
  end


end
