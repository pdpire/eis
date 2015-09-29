class Piedra

  def versus(rival)
  	case rival
  	  when "tijera"
  	  	"gana"
  	  when "papel"
  	    "pierde"
  	  when "mono"
  	    "empate"
  	  when "piedra"
  	  	"empate"
  	end
  end
end