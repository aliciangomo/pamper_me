class PhotosController < ApplicationController
  def index
    @provider = Provider.find(params[:provider_id])
    @photo = Photo.new
    @photos = @provider.photos.all
  end

  def new
  end

  def create
    @provider = Provider.find(params[:provider_id])
    @photo = Photo.new(photo_params)
    @photo.provider = @provider
    if @photo.save!
      redirect_to provider_path(@provider)
    else
      render :index
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    @provider = @photo.provider
    redirect_to provider_path(@provider)
  end

  private

  def photo_params
    params.require(:photo).permit(:data)
  end
end
