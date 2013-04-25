class Miembro < ActiveRecord::Base
  attr_accessible :apellido, :fechanac, :nombre , :sexo

  validates_presence_of :apellido, :fechanac, :nombre, :sexo
end
