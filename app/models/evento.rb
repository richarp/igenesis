class Evento < ActiveRecord::Base
  attr_accessible :detalle, :fechaf, :fechai, :titulo
  validates_presence_of :detalle, :fechaf, :fechai, :titulo
end
