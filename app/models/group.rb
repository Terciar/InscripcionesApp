class Group < ActiveRecord::Base
#has_many :inscription, autosave: true

#Datos obligatorios:
# Nombre, sexo, edad_minima, edad_maxima, cupo
validates :nombre, :sexo, :quota, :initial_age, :maximun_age, presence: { message: "es un dato obligatorio."}
  
#Datos numericos,
validates :initial_age, :maximun_age, numericality: { only_integer: true, greater_than: 2, less_than: 15, message: "debe ser entre 3 y 15." }
validates :quota, numericality: { only_integer: true, greater_than: 4, less_than: 26, message: "debe ser entre 5 y 25." }
validates :extended_quota, numericality: { only_integer: true, greater_than: 0, less_than: 6, message: "debe ser entre 1 y 5." }, :allow_blank => true

#  :nombre 
#  :sexo
#  :quota 
#  :extended_quota  
#  :initial_age 
#  :maximun_age
end