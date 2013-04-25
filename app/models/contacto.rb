class Contacto < ActiveRecord::Base
  attr_accessible :asunto, :mensaje, :nombre, :email

  validates_presence_of :asunto, :mensaje, :nombre, :email
  #validates_length_of :asunto, :within => [2..50], :message => "Especifique asunto"
  validates_format_of     :email, :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i, :message => "no es correcto"

end
