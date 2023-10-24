# frozen_string_literal: true

# Images controller

class ImagesController < ApplicationController
  before_action :ensure_admin_authenticated, only: [:new]

  def landing
    @time = Time.now.hour

    @background_image = case @time
                        when 5..9
                          'sunrise.gif'
                        when 10..17
                          'daytime.gif'
                        when 18..21
                          'dusk.gif'
                        else
                          'night.gif'
                        end
  end

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to @image, notice: 'Image was successfully created.'
    else
      render 'new'
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:title, :year, :director, :image)
  end

  def ensure_admin_authenticated
    return if session[:admin_authenticated]

    flash[:error] = 'Restricted access'
    redirect_to images_path
  end
end
