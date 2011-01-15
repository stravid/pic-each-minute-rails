class InsertMinutes < ActiveRecord::Migration
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

      entry = Minute.new(:time => entry_time)
      entry.save

      start_time += 60
    end
  end

  def self.down
  end
end
