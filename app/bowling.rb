require './player.rb'

class Bowling   
    attr_reader :rolls

    def initialize
        @rolls =[]
        @player = Player.new
    end

    def roll
        frame = @rolls.length()
        pins_up = 10
        puts "------ #{frame} -----"
    # tirar primer tiro
        f_roll = @player.roll(pins_up)
        s_roll = 0
        t_roll = 0
        bonus = nil

        pins_up -= f_roll


        if f_roll == 10
            if frame != 9
                bonus = :strike
            else
                pins_up = 10
                s_roll = player.roll(pins_up)

                t_roll = player.roll(10) if (f_roll + s_roll == 10) || (f_roll + s_roll == 20)             
            end
        else
            s_roll = player.roll(pins_up)

            if f_roll + s_roll == 10
                if frame != 9 
                    bonus = :spare
                else
                    pins_up = 10
                    t_roll = player.roll(pins_up) 
            end
        end
       # frame: 1 - 9
            # f_roll == 10 
                # - chuza
                # - pasar al siguiente frame 
            # f_roll < 10
                # - tirar segunda bola
                # f_roll + s_roll == 10 
                    # - spare
                    #- siguiente frame 
       # frame: 10
        # tirar segunda bola
            # s_roll == 10 o spare 
             # - tirar tercero

    end

#    def score(roll_index = 0)
#        if aStrike?(roll_index)
#            score(roll_index + 1) + 10 + strikeBonus(roll_index)
#        elsif aSpare?(roll_index)
#            score(roll_index + 2) + 10 + spareBonus(roll_index)
#        end
#    end
#
#
#    def rollsInFrame(roll_index)
#        roll_at(roll_index) + roll_at(roll_index + 1)
#    end
#
#    def spareBonus(roll_index)
#        roll_at(roll_index + 2)
#    end
#
#    def strikeBonus(roll_index)
#        roll_at(roll_index + 1) + roll_at(roll_index + 2)
#    end
#
#    def aStrike?(roll_index)
#        roll_at(roll_index) == 10
#    end
#
#    def aSpare?(roll_index)
#        rollsInFrame(roll_index) == 10
#    end
#
#    def roll_at(index)
#        rolls[index] || 0
#    end
        
        
end

game = Bowling.new
puts game.roll