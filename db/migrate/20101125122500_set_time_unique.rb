class SetTimeUnique < ActiveRecord::Migration
  def self.up    
    add_index :minutes, :time, :unique => true
  end

  def self.down
  end
end
