class Noticium < ActiveRecord::Base
  attr_accessible :detalle, :titulo
  validates_uniqueness_of :titulo
  validates_presence_of :titulo, :detalle
end
