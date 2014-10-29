# require 'pry'
class ContactusController < ApplicationController
def index
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
