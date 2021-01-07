# frozen_string_literal: true

# the class manage the player behavior
class Player
  def roll(pins_up)
    if pins_up.positive?
      rand(0..pins_up)
    else
      0
    end
  end
end
