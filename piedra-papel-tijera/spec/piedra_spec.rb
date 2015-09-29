require 'rspec'
require_relative '../model/piedra'

describe 'Piedra' do

    let(:piedra) { Piedra.new }	

	it 'deberia ganarle a tijera' do
		piedra = Piedra.new
		expect(piedra.versus("tijera")).to eq "gana"
    end
		
end