require 'rspec'
require_relative '../model/tijera'

describe 'Tijera' do

    let(:tijera) { Tijera.new }	

	it 'deberia perder con piedra' do
		tijera = Tijera.new
		expect(tijera.versus("piedra")).to eq "pierde"
    end

    it 'deberia ganarle a papel' do
		tijera = Tijera.new
		expect(tijera.versus("papel")).to eq "gana"
    end

    it 'deberia ganarle a mono' do
		tijera = Tijera.new
		expect(tijera.versus("mono")).to eq "gana"
    end

    it 'deberia empatar con tijera' do
		tijera = Tijera.new
		expect(tijera.versus("tijera")).to eq "empate"
    end




end