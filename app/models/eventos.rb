require 'pry'
class Eventos < ActiveRecord::Base

def self.content

	binding.pry
	@eventos.first.name
	
end

end
