class CreateMinutes < ActiveRecord::Migration
  def self.up
    create_table :minutes do |t|
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :minutes
  end
end
