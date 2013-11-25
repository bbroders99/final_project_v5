class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def new
  end

  def create
    @image = Image.new
    @image.url = params[:url]
    @image.idea_id = params[:idea_id]
    @image.artist_id = params[:artist_id]

    if @image.save
      redirect_to images_url, notice: "Image created successfully."
    else
      render 'new'
    end
  end

  def edit
    @image = Image.find_by(id: params[:id])
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.url = params[:url]
    @image.idea_id = params[:idea_id]
    @image.artist_id = params[:artist_id]

    if @image.save
      redirect_to images_url, notice: "Image updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy

    redirect_to images_url, notice: "Image deleted."
  end
end
