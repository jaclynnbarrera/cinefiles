class ImagesController < ApplicationController

  def landing
    @time = Time.now.hour

    case @time
    when 5..9
      @background_image = "sunrise.gif"
    when 10..17
      @background_image = "daytime.gif"
    when 18..21
      @background_image = "dusk.gif"
    else
      @background_image = "night.gif"
    end
  end

  def index
    @images = Image.all
  end

  def new
  end
end

