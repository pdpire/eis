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
      @operaciones = params[:operaciones].to_i
      session[:operaciones] = @operaciones
      render 'calculadora'
    end


     post 'calculadora' do
      @calc = Calculadora.new
      @num1 = params[:num1]
      @num2 = params[:num2]
      @calc.set_cant_op(session[:operaciones])
      if(params[:sumar])
        ret = @calc.sumar(@num1.to_i, @num2.to_i)
      end
      if(params[:restar])
        ret = @calc.restar(@num1.to_i, @num2.to_i)
      end
      if(params[:promediar])
        ret = @calc.promediar(@num1.to_i, @num2.to_i)
      end
      if(params[:reseteo])
        ret = @calc.resetear
      end
      @resultado = ret
      @operaciones = @calc.get_cant_op
      session[:operaciones] = @operaciones
      render 'calculadora'
    end

  end
end