class PicturesController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]
  
  def new
    @picture = Picture.new
  end

  def create
    @minute = Minute.find_by_time(params[:time])

    if @minute
      @picture = @minute.pictures.create(params[:picture])

      redirect_to :action => 'edit', :id => @picture.id
    end

    # TODO: error handling
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def show
    @picture = Picture.find(params[:id])

    @width = @picture.bottom_x - @picture.top_x
    @height = @picture.bottom_y - @picture.top_y
  end

  def update
    @minute = Minute.find_by_time(params[:time])
    @picture = Picture.find(params[:id])

    if @minute && @picture
      @picture.minute_id = @minute.id
      @picture.attributes = params[:picture]

      @picture.save
      redirect_to Minute
    end
  end
end
