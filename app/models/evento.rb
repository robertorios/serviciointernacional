require 'pry'
class Evento < ActiveRecord::Base

def self.content
@eventos = Evento.all
	@eventos.first.name
end

end
