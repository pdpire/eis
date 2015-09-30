require 'rspec'
require_relative '../model/tijera'

describe 'Tijera' do

    let(:tijera) { Tijera.new }	

	it 'deberia perder con piedra' do
		tijera = Tijera.new
		expect(tijera.versus("piedra")).to eq "pierde"
    end

end