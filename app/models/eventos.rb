require 'pry'
class Eventos < ActiveRecord::Base

def content

	binding.pry
	@eventos.first.name
	
end

end
