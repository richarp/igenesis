class Aimagen < ActiveRecord::Base
  attr_accessible :direccion, :galeria
  validates_presence_of :direccion, :galeria
end
