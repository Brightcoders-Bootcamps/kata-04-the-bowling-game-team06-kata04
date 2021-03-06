# frozen_string_literal: true

#require 'player'
#require './pins'
#require './bowling'

# the class manage the game make by the user
class Game
  # initialize class method with bowling argument
  attr_reader :bowling
  def initialize(bowling)
    @bowling = bowling
  end

  # this method simulates a game
  def play
    10.times do
      @bowling.add_frame
    end
  end

  # this method print the score
  def print_score
    score = @bowling.score
    frame_count = 1
    score.each do |frame|
      puts "--> Frame: #{frame_count} <--"
      puts score_type(frame[:f_roll], frame[:s_roll], frame[:t_roll], frame[:bonus])
      puts "|  #{frame[:points]}"
      puts '----------'
      frame_count += 1
    end
  end

  def score_type(f_roll, s_roll, t_roll, bonus)
    f_score = f_roll == 10 ? 'X' : f_roll
    t_score = t_roll == 10 ? 'X' : t_roll
    s_score = if bonus == :spare
                '/'
              elsif s_roll == 10
                'X'
              else
                s_roll
              end
    "|#{f_score}|#{s_score}|#{t_score}"
  end
end

#player = Player.new
#pins = Pins.new
#bowling = Bowling.new(player, pins)

#game = Game.new(bowling)
#game.play
#game.print_score
