# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [{:nombre => 'Rubén Aguirre Jirafales',:email => 'profjirafales@elchavo.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
         {:nombre => 'Sr. Pepito Argento',:email => 'admin@club.com', :password => "clave12345", :password_confirmation => "clave12345", :tipo => '1', :habilitado => 'true'}
     ]

users.each do |user|
   User.create!(user)
end

groups = [{:nombre => 'group0 v',:sexo => '1',:quota => '10', :extended_quota => '1', :initial_age => '3', :maximun_age => '4'},
          {:nombre => 'group1 m',:sexo => '2',:quota => '10', :extended_quota => '1', :initial_age => '5', :maximun_age => '6'},
          {:nombre => 'group3 mix',:sexo => '3',:quota => '10', :extended_quota => '1', :initial_age => '7', :maximun_age => '8'},
          {:nombre => 'group4 v',:sexo => '1',:quota => '10', :extended_quota => '1', :initial_age => '9', :maximun_age => '10'},
          {:nombre => 'group5 m',:sexo => '2', :quota => '10', :extended_quota => '1', :initial_age => '11', :maximun_age => '12'}
     ]

groups.each do |group|
   Group.create!(group)
end


# { :colonist_name => '',
# :colonist_age => '',
#    :colonist_birtday => '',
# :colonist_gender => '',
# :colonist_dni => '',
#  :colonist_address => '',
#  :colonist_telephone => '',
#  :colonist_email => '',
#  :colonist_school_name => '',
# :colonist_grade => '',
#  :colonist_school_address => '',
#  :colonist_school_phone => '',
#  :colonist_medical_insurance => '',
#  :colonist_trauma => '',
#  :colonist_surgery => '',
# :colonist_illness_asthma => '',
#  :colonist_illness_allergy => '',
# :colonist_illness_heart_failure => '',
# :colonist_illness_diabetes => '',
#  :colonist_illness_other => '',
# :colonist_medical_observation => '',
# :colonist_doctor => '',
# :colonist_know_swim => '',
#  :colonist_swim_school => '',
#  :colonist_swim_leave_reasons => '',
#  :how_know_us => '',
#  :parents_relation => '',
#  :father_name => '',
# :father_age => '',
# :father_lives => '',
# :father_visit => '',
#  :father_email => '',
#  :father_profession => '',
#  :father_work_phone => '',
#  :mother_name => '',
# :mother_age => '',
# :mother_lives => '',
# :mother_visit => '',
#  :mother_email => '',
#  :mother_profession => '',
#  :mother_work_phone => '',
#  :who_register => '',
# :i_attest => true
# }
