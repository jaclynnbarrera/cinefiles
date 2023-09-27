class ImagesController < ApplicationController

  def landing
    time = Time.now.hour

    case time
    when 5..9
      puts "display sunrise"
    when 10..17
      puts "display daytime"
    when 18..21
      puts "display dusk"
    else
      puts "display night"
    end
  end

  def index
    @images = Image.all
  end
end

