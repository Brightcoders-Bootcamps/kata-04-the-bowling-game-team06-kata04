# frozen_string_literal: true

require '../app/bowling'
require '../app/player'
require '../app/pins'
require 'rspec'


describe Bowling do
    player = Player.new
    pins = Pins.new
    bowling = Bowling.new(player, pins)
    describe '.sum_score' do
        it "returns the value of the past frame" do
            expect(bowling.sum_score(0)).to eql(0)
        end
    end

    describe ".bonus?" do
        it "returns strike or spare" do
            expect(bowling.bonus?(5, 5)).to eql(:spare)
        end
    end

    describe ".score" do
        it "returns the length of frames" do
            expect(bowling.score).to eql(bowling.frames)
        end
    end
end