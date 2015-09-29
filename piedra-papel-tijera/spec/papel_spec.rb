require 'rspec'
require_relative '../model/papel'

describe 'Papel' do

    let(:papel) { Papel.new }	

	it 'deberia perder con tijera' do
		papel = Papel.new
		expect(papel.versus("tijera")).to eq "pierde"
    end

end