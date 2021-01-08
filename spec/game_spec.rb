# frozen_string_literal: true

require '../app/game'
require '../app/bowling'
require '../app/player'
require '../app/pins'

require 'rspec'

describe Game do
    player = Player.new
    pins = Pins.new
    bowling = Bowling.new(player, pins)
    game = Game.new(bowling)
    describe '.score_type' do
        it "returns a score" do
            expect(game.score_type(10,10,10,:strike)).to eql("|X|X|X")
        end
    end

    describe '.play' do
        it "returns a array length" do
            game.play
            expect(game.bowling.frames.length()).to eql(10)
        end
    end
end

# "|X|X|X"