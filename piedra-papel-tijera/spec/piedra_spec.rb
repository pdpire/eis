require 'rspec'
require_relative '../model/piedra'

describe 'Piedra' do

    let(:piedra) { Piedra.new }	

	it 'deberia ganarle a tijera' do
		piedra = Piedra.new
		expect(piedra.versus("tijera")).to eq "gana"
    end

    it 'deberia perder con papel' do
		piedra = Piedra.new
		expect(piedra.versus("papel")).to eq "pierde"
    end


    it 'deberia empatar con mono' do
		piedra = Piedra.new
		expect(piedra.versus("mono")).to eq "empate"
    end


    it 'deberia empatar con piedra' do
		piedra = Piedra.new
		expect(piedra.versus("piedra")).to eq "empate"
    end


end