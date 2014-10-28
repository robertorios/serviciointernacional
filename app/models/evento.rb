require 'pry'
class Evento < ActiveRecord::Base

def self.content
	binding.pry
	@eventos = Evento.all
	@eventos.first.name
end

end
