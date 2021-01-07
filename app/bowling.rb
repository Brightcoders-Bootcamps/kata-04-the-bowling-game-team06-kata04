# frozen_string_literal: true

# the class manage the game status
class Bowling
  attr_reader :rolls

  # initialize class method with player and pins
  def initialize(player, pins)
    @frames = []
    @player = player
    @pins = pins
  end

  # this method make a roll
  def roll
    @pins.knock_pins(@player.roll(@pins.up))
  end

  # this method is the game in each frame
  def play_frame
    @pins.up_pins
    frame = @frames.length + 1

    f_roll = roll
    @pins.up_pins if f_roll == 10 && frame == 10
    s_roll = roll

    preview = f_roll + s_roll
    t_roll = third_roll(preview) if frame == 10
    preview += t_roll if t_roll != nil
    bonus = bonus?(f_roll, s_roll)

    add_bonus(f_roll,s_roll,frame) if frame > 1

    { f_roll: f_roll, s_roll: s_roll, t_roll: t_roll, points: preview + sum_score(frame), bonus: bonus }
  end

  def sum_score(frame)
    if frame > 1
      @frames[frame - 2][:points]
    else
      0
    end
  end

  def add_bonus(f_roll, s_roll, frame)
    prev_frame = frame - 2
    bonus = @frames[prev_frame][:bonus]
    if bonus == :strike
        @frames[prev_frame][:points] += f_roll + s_roll
    elsif bonus == :spare
        @frames[prev_frame][:points] += f_roll
    end
  end

  # this method add a new frame
  def add_frame
    @frames << play_frame
  end

  # validating if is a third roll or not
  def third_roll(preview)
    if [10, 20].include?(preview)
      @pins.up_pins
      roll
    end
  end

  # validating if the user won a bonus or not
  def bonus?(f_roll, s_roll)
    if f_roll == 10
      :strike
    elsif f_roll + s_roll == 10
      :spare
    end
  end

  # the number of frames (score)
  def score
    @frames
  end
end
