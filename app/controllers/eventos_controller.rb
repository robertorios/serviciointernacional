require 'pry'
class EventosController < ApplicationController
	def index
		redirect_to action: 'show', id: 1
				# params['id']="1"
		# show
		# @eventos = Evento.all
	end

	def show
		binding.pry
		@evento = Evento.find(params[:id])
	end

	def update
		evento = Evento.find(params[:id])
  		evento.value =	params[:content][:eventos_value][:value]
  		evento.save!
		render text: ""
	end
end
