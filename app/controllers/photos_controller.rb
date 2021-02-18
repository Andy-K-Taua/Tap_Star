class PhotosController < ApplicationController


  def new
    @photo = Photo.new
    @place_id = params[:place_id]
  end

  def create
    photo = Photo.create photo_params
    redirect_to place_path(photo.place_id)
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Place.find params[:id]
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def update
    photo = Photo.find params[:id]
    photo.update photo_params
    redirect_to photos_path(path.id)
  end

  def destroy
    Photo.destroy params[:id]
    redirect_to places_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :rating, :place_id)

end
end
