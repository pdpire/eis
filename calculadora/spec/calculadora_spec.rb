require 'rspec'
require_relative '../app/models/calculadora'

describe 'Calculadora' do

  let(:calculadora) { Calculadora.new }	
    
    it 'cant de operaciones deberia arrancar en 0' do
	  @calc = Calculadora.new

	  expect(@calc.get_cant_op).to eq 0
    end

end