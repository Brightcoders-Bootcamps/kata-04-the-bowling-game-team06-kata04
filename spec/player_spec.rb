# frozen_string_literal: true

require '../app/player'
require 'rspec'


describe Player do
    player = Player.new

    describe '.roll' do
        it "returns a number between 0 - 10" do
            expect(player.roll(5)).to be_between(0, 5).inclusive
        end
    end
end