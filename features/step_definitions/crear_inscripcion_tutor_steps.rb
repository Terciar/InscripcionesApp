include RegistrationsHelper

Dado(/^que estoy en la página inscripciones de la web de la colonia buena onda$/) do
  visit('registrations/new')
end

Dado(/^que completo los datos del formulario de inscripción$/) do
  step %{completo los datos del colono con "Juan Jacinto Perez", "5", "13/08/2008", "Varon", "54012456", "Av. Cabildo Nro 10550", "44444444444", "colono12@hotmail.com", "Sagrado corazón", "3", "Luis María Campos Nro. 5550", "11425587963", "OSDE", "NO", "NO", "NO", "NO", "NO", "NO", "NO", "NO", "SI", "SI", "NO", "ninguna", "página de internet", "Casado", "Patricio Perez", "35", "SI", "SI", "correopapa@mail.com", "arquero de futbol", "1174569247", "Alba Roggio", "33", "SI", "SI", "correomama@mail.com", "arquitecta", "11 24685391", "Madre", "SI", "1"}
end

Dado(/^completo los datos del colono con "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/)  do |colonist_name, colonist_age, colonist_birtday, colonist_gender, colonist_dni, colonist_address, colonist_telephone, colonist_email, colonist_school_name, colonist_grade,colonist_school_address, colonist_school_phone, colonist_medical_insurance,colonist_trauma, colonist_surgery, colonist_illness_asthma, colonist_illness_allergy, colonist_illness_heart_failure, colonist_illness_diabetes, colonist_illness_other, colonist_medical_observation, colonist_doctor, colonist_know_swim, colonist_swim_school, colonist_swim_leave_reasons, how_know_us, parents_relation, father_name, father_age, father_lives, father_visit, father_email, father_profession, father_work_phone, mother_name, mother_age, mother_lives, mother_visit, mother_email, mother_profession, mother_work_phone, who_register, i_attest, group_id|

  fill_in  "registration_colonist_name", :with => colonist_name
  fill_in  "registration_colonist_age", :with => colonist_age
  select_date(colonist_birtday, :from => "Fecha de Nacimiento") if colonist_birtday != ""
  choose(colonist_gender) if colonist_gender != ""
  fill_in  "registration_colonist_dni", :with => colonist_dni
  fill_in  "registration_colonist_address", :with => colonist_address
  fill_in  "registration_colonist_telephone", :with => colonist_telephone
  fill_in  "registration_colonist_email", :with => colonist_email
  fill_in  "registration_colonist_school_name", :with => colonist_school_name
  fill_in  "registration_colonist_grade", :with => colonist_grade
  fill_in  "registration_colonist_school_address", :with => colonist_school_address
  fill_in  "registration_colonist_school_phone", :with => colonist_school_phone
  fill_in  "registration_colonist_medical_insurance", :with => colonist_medical_insurance
  fill_in  "registration_colonist_trauma", :with => colonist_trauma
  fill_in  "registration_colonist_surgery", :with => colonist_surgery
  check("registration_colonist_illness_asthma") if colonist_illness_asthma == "SI"
  fill_in  "registration_colonist_illness_allergy", :with => colonist_illness_allergy 
  check("registration_colonist_illness_heart_failure")if colonist_illness_heart_failure == "SI"
  check("registration_colonist_illness_diabetes") if colonist_illness_diabetes == "SI"
  fill_in  "registration_colonist_illness_other", :with => colonist_illness_other
  check("registration_colonist_medical_observation") if colonist_medical_observation == "SI"
  check("registration_colonist_doctor") if colonist_doctor == "SI"
  if colonist_know_swim == "SI"
    choose("registration_colonist_know_swim_1")
  else
    choose("registration_colonist_know_swim_2")
  end
  fill_in "registration_colonist_swim_school", :with =>  colonist_swim_school
  fill_in "registration_colonist_swim_leave_reasons", :with => colonist_swim_leave_reasons  
  fill_in "registration_how_know_us", :with => how_know_us
  select parents_relation, :from => "parents_relation_select"
  fill_in "registration_father_name", :with => father_name
  fill_in "registration_father_age", :with => father_age
  check("registration_father_lives") if father_lives == "SI"
  check("registration_father_visit") if father_visit == "SI"  
  fill_in 'email_padre', with: father_email if father_email
  fill_in "registration_father_profession", :with => father_profession
  fill_in "registration_father_work_phone", :with => father_work_phone
  fill_in "registration_mother_name", :with => mother_name
  fill_in "registration_mother_age", :with => mother_age
  check("registration_mother_lives") if mother_lives == "SI"
  check("registration_mother_visit") if mother_visit == "SI"  
  fill_in "registration_mother_email", :with => mother_email
  fill_in "registration_mother_profession", :with => mother_profession
  fill_in "registration_mother_work_phone", :with => mother_work_phone
  select who_register, :from => "registration_who_register"
  check("registration_i_attest") if i_attest == "SI"
  # fill_in  "registration_group_id" 

  #  #Crear mock
 @registration = {"colonist_name" => colonist_name,
    "colonist_age" => colonist_age,
    "colonist_birtday" => colonist_birtday,
    "colonist_gender" => colonist_gender,
    "colonist_dni" => colonist_dni,
    "colonist_address" => colonist_address ,
    "colonist_telephone" => colonist_telephone,
    "colonist_email" => colonist_email,
    "colonist_school_name" => colonist_school_name,
    "colonist_grade" => colonist_grade,
    "colonist_school_address" => colonist_school_address,
    "colonist_school_phone" => colonist_school_phone,
    "colonist_medical_insurance" => colonist_medical_insurance,
    "colonist_trauma" => colonist_trauma,
    "colonist_surgery" => colonist_surgery,
    "colonist_illness_asthma" => colonist_illness_asthma,
    "colonist_illness_allergy" => colonist_illness_allergy,
    "colonist_illness_heart_failure" => colonist_illness_heart_failure,
    "colonist_illness_diabetes" => colonist_illness_diabetes,
    "colonist_illness_other" => colonist_illness_other,
    "colonist_medical_observation" => colonist_medical_observation,
    "colonist_doctor" => colonist_doctor,
    "colonist_know_swim" => colonist_know_swim,
    "colonist_swim_school" => colonist_swim_school,
    "colonist_swim_leave_reasons" => colonist_swim_leave_reasons,
    "how_know_us" => how_know_us ,
    "parents_relation" => parents_relation,
    "father_name" => father_name,
    "father_age" => father_age,
    "father_lives" => father_lives,
    "father_visit" => father_visit,
    "father_email" => father_email,
    "father_profession" => father_profession,
    "father_work_phone" => father_work_phone,
    "mother_name" => mother_name,
    "mother_age" => mother_age,
    "mother_lives" => mother_lives,
    "mother_visit" => mother_visit,
    "mother_email" => mother_email,
    "mother_profession" => mother_profession,
    "mother_work_phone" => mother_work_phone,
    "who_register" => who_register,
    "i_attest" => i_attest,
    "group_id" => group_id }
  #save_and_open_page
end

Entonces(/^veo el mensaje de bienvenida a la colonia$/) do
  #save_and_open_page
  mensaje = "Bienvenido a la familia Buena Onda. Ya estás pre-inscripto. No olvides pasar por el club [dirección] de (9) a (18) dentro de las próximas 72 hs para confirmar la inscripción de " + @registration["colonist_name"] + " y abonar la inscripción."
  assert page.has_content?(mensaje)
end


Entonces(/^recibo un mail que me dice "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
end

#Dado(/^completo los datos de mi tutelado y  míos con "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |colonist_name, colonist_age, colonist_birtday, colonist_gender, colonist_dni, colonist_address, colonist_telephone, colonist_email, colonist_school_name, colonist_grade,colonist_school_address, colonist_school_phone, colonist_medical_insurance,colonist_trauma, colonist_surgery, colonist_illness_asthma, colonist_illness_allergy, colonist_illness_heart_failure, colonist_illness_diabetes, colonist_illness_other, colonist_medical_observation, colonist_doctor, colonist_know_swim, colonist_swim_school, colonist_swim_leave_reasons, how_know_us, parents_relation, father_name, father_age, father_lives, father_visit, father_email, father_profession, father_work_phone, mother_name, mother_age, mother_lives, mother_visit, mother_email, mother_profession, mother_work_phone, who_register, i_attest|
  #step %{completo los datos del colono con "#{colonist_name}", "#{colonist_age}", "#{colonist_birtday}", "#{colonist_gender}", "#{colonist_dni}", "#{colonist_address}", "#{colonist_telephone}", "#{colonist_email}", "#{colonist_school_name}", "#{colonist_grade}","#{colonist_school_address}", "#{colonist_school_phone}", "#{colonist_medical_insurance}","#{colonist_trauma}", "#{colonist_surgery}", "#{colonist_illness_asthma}", "#{colonist_illness_allergy}", "#{colonist_illness_heart_failure}", "#{colonist_illness_diabetes}", "#{colonist_illness_other}", "#{colonist_medical_observation}", "#{colonist_doctor}", "#{colonist_know_swim}", "#{colonist_swim_school}", "#{colonist_swim_leave_reasons}", "#{how_know_us}", "#{parents_relation}", "#{father_name}", "#{father_age}", "#{father_lives}", "#{father_visit}", "#{father_email}", "#{father_profession}", "#{father_work_phone}", "#{mother_name}", "#{mother_age}", "#{mother_lives}", "#{mother_visit}", "#{mother_email}", "#{mother_profession}", "#{mother_work_phone}", "#{who_register}", "#{i_attest}"}
#end

Dado(/^completo los datos de mi tutelado y míos con "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30, arg31, arg32, arg33, arg34, arg35, arg36, arg37, arg38, arg39, arg40, arg41, arg42, arg43|

  step %{completo los datos del colono con "#{arg1}", "#{arg2}", "#{arg3}", "#{arg4}", "#{arg5}", "#{arg6}", "#{arg7}", "#{arg8}", "#{arg9}", "#{arg10}", "#{arg11}", "#{arg12}", "#{arg13}", "#{arg14}", "#{arg15}", "#{arg16}", "#{arg17}", "#{arg18}", "#{arg19}", "#{arg20}", "#{arg21}", "#{arg22}", "#{arg23}", "#{arg24}", "#{arg25}", "#{arg26}", "#{arg27}", "#{arg28}", "#{arg29}", "#{arg30}", "#{arg31}", "#{arg32}", "#{arg33}", "#{arg34}", "#{arg35}", "#{arg36}", "#{arg37}", "#{arg38}", "#{arg39}", "#{arg40}", "#{arg41}", "#{arg42}", "#{arg43}", "1"}
end