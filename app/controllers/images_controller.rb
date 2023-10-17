# frozen_string_literal: true

# Images controller

class ImagesController < ApplicationController
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
      # Handle a successful submission (e.g., redirect to a show page)
      redirect_to @image, notice: 'Image was successfully created.'
    else
      render 'new' # Render the new form again with errors
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:title, :year, :director, :file)
  end
end
