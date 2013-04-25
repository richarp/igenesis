class Predica < ActiveRecord::Base
  attr_accessible :autor, :mensaje, :titulo
  validates_presence_of :autor, :mensaje, :titulo
end
