class ImagesController < ApplicationController

  before_action :set_image, only: %i[show ediupdate destroy]

  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    respond_to do |format|
      if @image.save
        format.html {redirect_to images_path, notice: 'Images Created'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html {redirect_to root_path, notice: 'Image Updated'}
      else
        format.html {render :edit, notice: 'Image failed to updated'}
      end
    end
  end

  def destroy
    respond_to do |format|
      @image.destroy
      format.html {redirect_to images_path}
    end
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:background_image, :shop_image1, :shop_image2, :shop_image3, :shop_image4, :shop_image5, :user_id)
  end
end
