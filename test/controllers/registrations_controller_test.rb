require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { colonist_address: @registration.colonist_address, colonist_age: @registration.colonist_age, colonist_birtday: @registration.colonist_birtday, colonist_dni: @registration.colonist_dni, colonist_doctor: @registration.colonist_doctor, colonist_email: @registration.colonist_email, colonist_grade: @registration.colonist_grade, colonist_illness_allergy: @registration.colonist_illness_allergy, colonist_illness_asthma: @registration.colonist_illness_asthma, colonist_illness_diabetes: @registration.colonist_illness_diabetes, colonist_illness_heart_failure: @registration.colonist_illness_heart_failure, colonist_illness_other: @registration.colonist_illness_other, colonist_know_swim: @registration.colonist_know_swim, colonist_medical_insurance: @registration.colonist_medical_insurance, colonist_medical_observation: @registration.colonist_medical_observation, colonist_name: @registration.colonist_name, colonist_school_address: @registration.colonist_school_address, colonist_school_name: @registration.colonist_school_name, colonist_school_phone: @registration.colonist_school_phone, colonist_surgery: @registration.colonist_surgery, colonist_swim_leave_reasons: @registration.colonist_swim_leave_reasons, colonist_swim_school: @registration.colonist_swim_school, colonist_telephone: @registration.colonist_telephone, colonist_trauma: @registration.colonist_trauma, father_address: @registration.father_address, father_age: @registration.father_age, father_lives: @registration.father_lives, father_name: @registration.father_name, father_profession: @registration.father_profession, father_visit: @registration.father_visit, father_work_phone: @registration.father_work_phone, group_id: @registration.group_id, how_know_us: @registration.how_know_us, i_attest: @registration.i_attest, mother_address: @registration.mother_address, mother_age: @registration.mother_age, mother_lives: @registration.mother_lives, mother_name: @registration.mother_name, mother_profession: @registration.mother_profession, mother_visit: @registration.mother_visit, mother_work_phone: @registration.mother_work_phone, parents_relation: @registration.parents_relation, who_register: @registration.who_register }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { colonist_address: @registration.colonist_address, colonist_age: @registration.colonist_age, colonist_birtday: @registration.colonist_birtday, colonist_dni: @registration.colonist_dni, colonist_doctor: @registration.colonist_doctor, colonist_email: @registration.colonist_email, colonist_grade: @registration.colonist_grade, colonist_illness_allergy: @registration.colonist_illness_allergy, colonist_illness_asthma: @registration.colonist_illness_asthma, colonist_illness_diabetes: @registration.colonist_illness_diabetes, colonist_illness_heart_failure: @registration.colonist_illness_heart_failure, colonist_illness_other: @registration.colonist_illness_other, colonist_know_swim: @registration.colonist_know_swim, colonist_medical_insurance: @registration.colonist_medical_insurance, colonist_medical_observation: @registration.colonist_medical_observation, colonist_name: @registration.colonist_name, colonist_school_address: @registration.colonist_school_address, colonist_school_name: @registration.colonist_school_name, colonist_school_phone: @registration.colonist_school_phone, colonist_surgery: @registration.colonist_surgery, colonist_swim_leave_reasons: @registration.colonist_swim_leave_reasons, colonist_swim_school: @registration.colonist_swim_school, colonist_telephone: @registration.colonist_telephone, colonist_trauma: @registration.colonist_trauma, father_address: @registration.father_address, father_age: @registration.father_age, father_lives: @registration.father_lives, father_name: @registration.father_name, father_profession: @registration.father_profession, father_visit: @registration.father_visit, father_work_phone: @registration.father_work_phone, group_id: @registration.group_id, how_know_us: @registration.how_know_us, i_attest: @registration.i_attest, mother_address: @registration.mother_address, mother_age: @registration.mother_age, mother_lives: @registration.mother_lives, mother_name: @registration.mother_name, mother_profession: @registration.mother_profession, mother_visit: @registration.mother_visit, mother_work_phone: @registration.mother_work_phone, parents_relation: @registration.parents_relation, who_register: @registration.who_register }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
