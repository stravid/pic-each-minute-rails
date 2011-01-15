class AddPathColumn < ActiveRecord::Migration
  def self.up
    add_column :pictures, :path, :string
  end

  def self.down
    remove_column :pictures, :path, :string
  end
end
