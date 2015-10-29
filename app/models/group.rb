class Group < ActiveRecord::Base
#has_many :inscription, autosave: true

#Datos obligatorios:
# Nombre, sexo, edad_minima, edad_maxima, cupo
validates :nombre, :sexo, :quota, :initial_age, :maximun_age, presence: { message: "es un dato obligatorio."}
  
#Datos numericos,
validates :initial_age, :maximun_age, numericality: { only_integer: true, greater_than: 2, less_than: 100, message: "debe ser entre 3 y 99." }
validates :quota, numericality: { only_integer: true, greater_than: 4, less_than: 26, message: "debe ser entre 5 y 25." }
validates :extended_quota, numericality: { only_integer: true, greater_than: 0, less_than: 6, message: "debe ser entre 1 y 5." }

#validates :selection_process_id, numericality: { only_integer: true, greater_than: 0, less_than: 9223372036854775808, message: "debe ser entero y mayor que 0" }

#Longitudes.
#	validates :name, length: { in: 5..250, message: "debe tener entre 4 y 250 caracteres" }
#	validates :description, length: { in: 5..250, message: "debe tener entre 4 y 250 caracteres" }, :allow_blank => true
#	validates :bench, length: { in: 1..3, message: "debe ser entre 1 y 3 digitos" }


#  :nombre 
#    :sexo
#    :quota 
#    :extended_quota  
#    :initial_age 
#    :maximun_age

end
