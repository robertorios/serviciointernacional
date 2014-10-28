require 'pry'
class EventosController < ApplicationController
	def index
		@eventos = Evento.all
		binding.pry
	end

	# def show
	# 	binding.pry
	# 	@evento = Evento.find(params[:id])
	# end


	def mercury_update
		binding.pry
		evento = Evento.find(params[:id])
		# ...
		render text: ""
	end
end
