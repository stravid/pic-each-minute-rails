class RemovePathColumn < ActiveRecord::Migration
  def self.up
    remove_column :pictures, :path, :string
  end

  def self.down
    add_column :pictures, :path, :string
  end
end
