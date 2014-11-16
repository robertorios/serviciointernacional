class GmapsController < ApplicationController
  respond_to :js, :html
  before_action :set_gmap, only: [:show, :edit, :update, :destroy]

  def index
    @gmaps = Gmap.all
    @hash = Gmaps4rails.build_markers(@gmaps) do |gmap, marker|
              marker.lat gmap.latitude
              marker.lng gmap.longitude
            end
    # respond_with(@gmaps)
  end

  def show
    respond_with(@gmap)
  end

  def new
    @gmap = Gmap.new
    respond_with(@gmap)
  end

  def edit
  end

  def create
    @gmap = Gmap.new(gmap_params)
    @gmap.save
    respond_with(@gmap)
  end

  def update
    @gmap.update(gmap_params)
    respond_with(@gmap)
  end

  def destroy
    @gmap.destroy
    respond_with(@gmap)
  end

  private
    def set_gmap
      @gmap = Gmap.find(params[:id])
    end

    def gmap_params
      params.require(:gmap).permit(:latitude, :longitude, :address, :description, :title)
    end
end
