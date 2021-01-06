# Class for player

class Player
    def roll(pins_up)
        if pins_up > 0 
            rand(0..pins_up)
        else
            0
        end
    end

end