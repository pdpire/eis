require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get 'hola' do
      'hey! hola'
    end
    
    get 'saludo' do
      render 'saludo'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end



    get 'calculadora' do
      render 'calculadora'
    end


     post 'calculadora' do
      @calc = Calculadora.new
      @num1 = params[:num1]
      @num2 = params[:num2]
      if(params[:sumar])
        ret = @calc.sumar(@num1.to_i, @num2.to_i)
      end
      if(params[:restar])
        ret = @calc.restar(@num1.to_i, @num2.to_i)
      end
      @resultado = ret
      render 'calculadora'
    end





  end
end