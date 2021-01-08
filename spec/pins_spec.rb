require '../app/pins'
require 'rspec'

describe Pins do
    pins = Pins.new

    describe '.up_pins' do
        it "set number of pin on 10" do
            pins.up_pins
            expect(pins.up).to eql(10) 
        end
    end

    describe '.knock_pins' do
        it "check for the rem of up pins after a knock" do
            expect(pins.knock_pins(3)).to eql(3)
        end
    end
end