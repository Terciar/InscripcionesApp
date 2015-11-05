class Registration < ActiveRecord::Base
  belongs_to :group

  #Datos obligatorios:
  validates :colonist_name, :colonist_age, :colonist_birtday, :colonist_gender, :colonist_dni, :colonist_address, :colonist_telephone, :colonist_email, :colonist_school_name, :colonist_grade, :colonist_school_address, :colonist_school_phone, :colonist_doctor, :colonist_know_swim, :colonist_swim_school, :colonist_swim_leave_reasons, :how_know_us, :parents_relation, :father_name, :father_age, :father_lives, :father_visit, :father_email, :father_profession, :father_work_phone, :mother_name, :mother_age, :mother_lives, :mother_visit, :mother_email, :mother_profession, :mother_work_phone, :who_register, :i_attest , presence: { message: "es un dato obligatorio."}
  
#Datos numericos,
  validates :colonist_age, :colonist_grade, :father_age, :mother_age, numericality: { only_integer: true, greater_than: 2, less_than: 110, message: "debe ser entre 2 y 110." }

# Campos.
# :colonist_name
# :colonist_age
# :colonist_birtday
# :colonist_gender
# :colonist_dni
# :colonist_address
# :colonist_telephone
# :colonist_email
# :colonist_school_name
# :colonist_grade
# :colonist_school_address
# :colonist_school_phone
# :colonist_medical_insurance
# :colonist_trauma
# :colonist_surgery
# :colonist_illness_asthma
# :colonist_illness_allergy
# :colonist_illness_heart_failure
# :colonist_illness_diabetes
# :colonist_illness_other
# :colonist_medical_observation
# :colonist_doctor
# :colonist_know_swim
# :colonist_swim_school
# :colonist_swim_leave_reasons
# :how_know_us
# :parents_relation
# :father_name
# :father_age
# :father_lives
# :father_visit
# :father_email
# :father_profession
# :father_work_phone
# :mother_name
# :mother_age
# :mother_lives
# :mother_visit
# :mother_email
# :mother_profession
# :mother_work_phone
# :who_register
# :i_attest
# :status, default: 1, null: false #1 pendiente, 2 aprobado, 3 rechazado 
# :group, index: true, foreign_key: true
end
