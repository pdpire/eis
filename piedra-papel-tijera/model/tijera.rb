class Tijera

  def id
    3	
  end

   def versus(rival)

    case rival.id
  	  when 1
  	  	"pierde"
  	  when 2
  	  	"gana"
  	  when 0
  	  	"gana"
  	  when 3
  	  	"empate"
  	end
  end
end