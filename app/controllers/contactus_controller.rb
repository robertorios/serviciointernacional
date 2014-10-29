# require 'pry'
class ContactusController < ApplicationController
def index
  new
end

def new
 @contact = Contact.new
end

def create
	binding.pry
Contactu.salvar(params['contact'])
binding.pry
end


end
