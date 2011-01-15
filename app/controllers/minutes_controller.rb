class MinutesController < ApplicationController
  def index
    @minutes = Minute.by_picture
  end

  def show
    @minute = Minute.find_by_time(params[:id])
  end

  def random
    @minute = Minute.find_by_time(params[:id])

    @pictures = @minute.pictures

    @picture = @pictures[rand(@pictures.length)]

    #@picture = @minute.pictures.first(:order => 'RANDOM()')

    @response = Hash.new

    @response['id'] = @picture.id
    @response['time'] = @minute.time
    @response['path'] = "http://piceachminute.multimediatechnology.at" + @picture.picture.url
    @response['top_x'] = @picture.top_x
    @response['top_y'] = @picture.top_y
    @response['bottom_x'] = @picture.bottom_x
    @response['bottom_y'] = @picture.bottom_y
    @response['location'] = @picture.location
    @response['uploader'] = @picture.uploader

    respond_to do |format|
      format.html do 
        render :partial => "minutes/random.json"
      end

      format.json do 
        render :partial => "minutes/random.json"
      end
    end
  end
end
