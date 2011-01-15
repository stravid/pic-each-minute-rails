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

    respond_to do |format|
      format.html
      format.json do 
        render :partial => "minutes/random.json"
      end
    end
  end
end
