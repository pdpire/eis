class Mono

  def id
    0	
  end

  def versus(rival)
    case rival.id
  	  when 3
  	  	"pierde"
  	  when 1
  	  	"empate"
  	  when 2
  	  	"gana"
  	  when 0
  	  	"empate"
  	end
  end
end