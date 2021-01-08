# frozen_string_literal: true

# the class manage the pins status
class Pins
  # initialize class method
  def initialize
    @pins_up = 0
  end

  # this method rest from the pins_up variable
  def knock_pins(pins)
    @pins_up -= pins
    pins
  end

  # this method up the 10 pins
  def up_pins
    @pins_up = 10
  end

  # how pins are up
  def up
    @pins_up
  end
end
# pins = Pins.new
#
# puts pins.knock_pins(7)
# puts pins.up
# pins.up_pins
# puts pins.up
