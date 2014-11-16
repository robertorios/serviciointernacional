# require 'pry'
class ContactusController < ApplicationController
def index
	@gmaps = Gmap.all
    @hash = Gmaps4rails.build_markers(@gmaps) do |gmap, marker|
              marker.lat gmap.latitude
              marker.lng gmap.longitude
              marker.infowindow gmap.description
            end
  new
end

def new
 @contact = Contact.new
end

def create
Contactu.salvar(params['contact'])
render "home/index"
end


end
