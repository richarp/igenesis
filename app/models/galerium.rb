class Galerium < ActiveRecord::Base
  attr_accessible :fecha, :nombre
  validates_presence_of    :fecha, :nombre
end
