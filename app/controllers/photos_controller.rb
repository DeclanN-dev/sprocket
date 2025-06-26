class PhotosController < ApplicationController
  def index
    @photo = Photo.new
    if params[:query].present?
      @photos = Photo.where("name LIKE ?", "%#{params[:query]}%")
    else
      @photos = Photo.all
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(params.expect(photo: [:name, :photo, :desc]))
    if @photo.save
      redirect_to @photo
    else
      redirect_to home_path
    end
  end

  def edit 
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(params.expect(photo: [:name, :photo, :desc]))
      redirect_to @photo
    else
      redirect_to home_path
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

end
