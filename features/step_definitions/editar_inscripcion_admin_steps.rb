Dado(/^que existe el colono Juan Perez$/) do
  step %{existe el colono "Juan Jacinto Perez" con estos datos: "5", "13/08/2008", "Varon", "54012456", "Av. Cabildo Nro 10550", "44444444444", "colono12@hotmail.com", "Sagrado corazón", "3", "Luis María Campos Nro. 5550", "11425587963", "osde", "false", "false", "false", "false", "false", "false", "false", "false", "true", "true", "false", "ninguna", "página de internet", "Casado", "Patricio Perez", "35", "true", "true", "correopapa@mail.com", "arquero de futbol", "1174569247", "Alba Roggio", "33", "true", "true", "correomama@mail.com", "arquitecta", "11 24685391", "Madre", "true", "1"}
end

Dado(/^existe el colono "(.*?)" con estos datos: "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |colonist_name, colonist_age, colonist_birtday, colonist_gender, colonist_dni, colonist_address, colonist_telephone, colonist_email, colonist_school_name, colonist_grade,colonist_school_address, colonist_school_phone, colonist_medical_insurance,colonist_trauma, colonist_surgery, colonist_illness_asthma, colonist_illness_allergy, colonist_illness_heart_failure, colonist_illness_diabetes, colonist_illness_other, colonist_medical_observation, colonist_doctor, colonist_know_swim, colonist_swim_school, colonist_swim_leave_reasons, how_know_us, parents_relation, father_name, father_age, father_lives, father_visit, father_email, father_profession, father_work_phone, mother_name, mother_age, mother_lives, mother_visit, mother_email, mother_profession, mother_work_phone, who_register, i_attest, group_id|
# Crea el registro
 @registration = Registration.create!({ 
 	:colonist_name => colonist_name,
    :colonist_age => colonist_age,
    :colonist_birtday => colonist_birtday,
    :colonist_gender => colonist_gender,
    :colonist_dni => colonist_dni,
    :colonist_address => colonist_address ,
    :colonist_telephone => colonist_telephone,
    :colonist_email => colonist_email,
    :colonist_school_name => colonist_school_name,
    :colonist_grade => colonist_grade,
    :colonist_school_address => colonist_school_address,
    :colonist_school_phone => colonist_school_phone,
    :colonist_medical_insurance => colonist_medical_insurance,
    :colonist_trauma => colonist_trauma,
    :colonist_surgery => colonist_surgery,
    :colonist_illness_asthma => colonist_illness_asthma,
    :colonist_illness_allergy => colonist_illness_allergy,
    :colonist_illness_heart_failure => colonist_illness_heart_failure,
    :colonist_illness_diabetes => colonist_illness_diabetes,
    :colonist_illness_other => colonist_illness_other,
    :colonist_medical_observation => colonist_medical_observation,
    :colonist_doctor => colonist_doctor,
    :colonist_know_swim => colonist_know_swim,
    :colonist_swim_school => colonist_swim_school,
    :colonist_swim_leave_reasons => colonist_swim_leave_reasons,
    :how_know_us => how_know_us ,
    :parents_relation => parents_relation,
    :father_name => father_name,
    :father_age => father_age,
    :father_lives => father_lives,
    :father_visit => father_visit,
    :father_email => father_email,
    :father_profession => father_profession,
    :father_work_phone => father_work_phone,
    :mother_name => mother_name,
    :mother_age => mother_age,
    :mother_lives => mother_lives,
    :mother_visit => mother_visit,
    :mother_email => mother_email,
    :mother_profession => mother_profession,
    :mother_work_phone => mother_work_phone,
    :who_register => who_register,
    :i_attest => i_attest,
    :group_id => group_id })
  
  #save_and_open_page
end

