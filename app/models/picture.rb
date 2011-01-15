class Picture < ActiveRecord::Base
  belongs_to :minute

  has_attached_file :picture
end
