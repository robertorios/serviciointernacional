require 'pry'
class EventosController < ApplicationController
	def index
		@eventos = Evento.all
	end

	def show
		@evento = Evento.find(params[:id])
	end

	def update
		evento = Evento.find(params[:id])
  		evento.value =	params[:content][:eventos_value][:value]
  		evento.save!
		render text: ""
	end
end
