class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :minute_id
      t.integer :blames
      t.integer :top_x
      t.integer :top_y
      t.integer :bottom_x
      t.integer :bottom_y
      t.string :uploader
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
