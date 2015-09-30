class Papel

  def id
    2	
  end	

  def versus(rival)
    case rival.id
  	  when 3
  	  	"pierde"
  	  when 1
  	  	"gana"
  	  when 0
  	  	"pierde"
  	  when 2
  	  	"empate"
  	end
  end
end