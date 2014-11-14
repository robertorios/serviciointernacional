require 'pry'
class Evento < ActiveRecord::Base

def content
@eventos = Evento.all
	@eventos.first.name
end

end
