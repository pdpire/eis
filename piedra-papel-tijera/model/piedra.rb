class Piedra

  def id
    1	
  end	

  def versus(rival)
  	case rival.id
  	  when 3
  	  	"gana"
  	  when 2
  	    "pierde"
  	  when 0
  	    "empate"
  	  when 1
  	  	"empate"
  	end
  end
end