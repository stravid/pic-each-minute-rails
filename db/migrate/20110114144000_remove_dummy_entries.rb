class RemoveDummyEntries < ActiveRecord::Migration
  def self.up
    Picture.delete_all
  end

  def self.down
  end
end
