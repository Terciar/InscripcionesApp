class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :colonist_name
      t.integer :colonist_age
      t.date :colonist_birtday
      t.integer :colonist_dni
      t.string :colonist_address
      t.string :colonist_telephone
      t.string :colonist_email
      t.string :colonist_school_name
      t.integer :colonist_grade
      t.string :colonist_school_address
      t.string :colonist_school_phone
      t.string :colonist_medical_insurance
      t.string :colonist_trauma
      t.string :colonist_surgery
      t.boolean :colonist_illness_asthma
      t.string :colonist_illness_allergy
      t.boolean :colonist_illness_heart_failure
      t.boolean :colonist_illness_diabetes
      t.string :colonist_illness_other
      t.boolean :colonist_medical_observation
      t.boolean :colonist_doctor
      t.boolean :colonist_know_swim
      t.string :colonist_swim_school
      t.string :colonist_swim_leave_reasons
      t.string :how_know_us
      t.string :parents_relation
      t.string :father_name
      t.integer :father_age
      t.boolean :father_lives
      t.boolean :father_visit
      t.string :father_email
      t.string :father_profession
      t.string :father_work_phone
      t.string :mother_name
      t.integer :mother_age
      t.boolean :mother_lives
      t.boolean :mother_visit
      t.string :mother_email
      t.string :mother_profession
      t.string :mother_work_phone
      t.string :who_register
      t.boolean :i_attest
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
