require 'rspec'
require_relative '../model/papel'

describe 'Papel' do

    let(:papel) { Papel.new }	

	it 'deberia perder con tijera' do
		papel = Papel.new
		expect(papel.versus("tijera")).to eq "pierde"
    end

    it 'deberia ganarle a piedra' do
		papel = Papel.new
		expect(papel.versus("piedra")).to eq "gana"
    end


    it 'deberia perder con mono' do
		papel = Papel.new
		expect(papel.versus("mono")).to eq "pierde"
    end


    it 'deberia empatar con papel' do
		papel = Papel.new
		expect(papel.versus("papel")).to eq "empate"
    end


end