class PlacesController < ApplicationController

  def new
    @place = Place.new
  end

  def create
    Place.create place_params
    redirect_to places_path
  end

  def index
    @places = Place.all
  end

  def show
    @place = Place.find params[:id]
  end

  def edit
    @place = Place.find params[:id]
  end

  def update
    place = Place.find params[:id]
    place.update place_params
    redirect_to place_path(place.id)
  end

  def destroy
    Place.destroy params[:id]
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:setting, :state, :address)

end
end
