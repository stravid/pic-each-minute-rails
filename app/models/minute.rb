class Minute < ActiveRecord::Base
  has_many :pictures

  def self.by_picture
    joins(:pictures).group(:time)
  end

  def to_param
    "#{time}"
  end
end
