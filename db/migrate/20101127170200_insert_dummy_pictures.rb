class InsertDummyPictures < ActiveRecord::Migration
  def self.up    
    start_time = Time.parse('Aug 31')

    for minute in 1..1440
      minutes = start_time.min.to_s
      hours = start_time.hour.to_s

      if minutes.length < 2
        minutes = "0" + minutes
      end

      if hours.length < 2
        hours = "0" + hours
      end

      entry_time = hours + minutes
      
      minute = Minute.find_by_time(entry_time)
      path = 'dummys/' + entry_time + '.png'

      picture = minute.pictures.new(:top_x => 0, :top_y => 0, :bottom_x => 1000, :bottom_y => 596, :uploader => 'Flash', :location => 'Digital Nirvana', :path => path)
      picture.save

      start_time += 60
    end
  end

  def self.down
  end
end
