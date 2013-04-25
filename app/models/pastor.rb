class Pastor < ActiveRecord::Base
  attr_accessible :apellidos, :nombre , :cargo
  validates_presence_of :apellidos, :nombre , :cargo
end
