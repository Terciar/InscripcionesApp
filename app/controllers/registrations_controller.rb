
class RegistrationsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]
  before_action :set_registration, only: [:show, :edit, :update, :destroy]

  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all.order('created_at ASC')
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        format.html { redirect_to @registration, notice: 'Registration was successfully created.' }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations/1
  # PATCH/PUT /registrations/1.json
  def update
    respond_to do |format|
      if @registration.update(registration_params)
        format.html { redirect_to @registration, notice: 'Registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration }
      else
        format.html { render :edit }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration.destroy
    respond_to do |format|
      format.html { redirect_to registrations_url, notice: 'Registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:colonist_name, :colonist_age, :colonist_birtday, :colonist_dni, :colonist_address, :colonist_telephone, :colonist_email, :colonist_school_name, :colonist_grade, :colonist_school_address, :colonist_school_phone, :colonist_medical_insurance, :colonist_trauma, :colonist_surgery, :colonist_illness_asthma, :colonist_illness_allergy, :colonist_illness_heart_failure, :colonist_illness_diabetes, :colonist_illness_other, :colonist_medical_observation, :colonist_doctor, :colonist_know_swim, :colonist_swim_school, :colonist_swim_leave_reasons, :how_know_us, :parents_relation, :father_name, :father_age, :father_lives, :father_visit, :father_address, :father_profession, :father_work_phone, :mother_name, :mother_age, :mother_lives, :mother_visit, :mother_address, :mother_profession, :mother_work_phone, :who_register, :i_attest, :group_id)
    end
end
