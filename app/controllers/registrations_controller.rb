
class RegistrationsController < ApplicationController
  include RecaptchaVerify
 
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]
  before_action :set_registration, only: [:show, :edit, :update, :destroy, :change_group, :confirm_registration ]

  before_action :check_recaptcha, :only => [:create] 
 
  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all.order('created_at DESC')
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    render layout: "sin_menu" unless user_signed_in? 
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
    render layout: "sin_menu" unless user_signed_in? 
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)
    @registration.group_id = sortear_grupo(@registration.colonist_age, @registration.colonist_gender)
    
    respond_to do |format|
      if @registration.save
        format.html { redirect_to @registration, notice: "Bienvenido a la familia Buena Onda. Ya estás pre-inscripto. No olvides pasar por el club [dirección] de (9) a (18) dentro de las próximas 72 hs para confirmar la inscripción de #{@registration.colonist_name} y abonar la inscripción." }
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
        format.html { redirect_to @registration, notice: 'Se actualizarón los datos correctamente.' }
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
      format.html { redirect_to registrations_url, notice: 'Se elimino correctamente el registro.' }
      format.json { head :no_content }
    end
  end

  # GET /registrations/1/change_group
  def change_group
  end

  def confirm_registration
    if params[:admission] == "aprobado"
       @registration.update!(status: 2)
       #Le envio el mail de confirmación.
       # Tell the RegistrationMailer to send a notification email after confirm
       #RegistrationMailer.confirm_registration_email(@registration).deliver_now
    end

    if params[:admission] == "rechazado"
       @registration.update!(status: 3)
    end
    redirect_to :back, notice: "La admisión del colono fue #{params[:admission]} correctamente."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:colonist_name, :colonist_age, :colonist_birtday, :colonist_gender, :colonist_dni, :colonist_address, :colonist_telephone, :colonist_email, :colonist_school_name, :colonist_grade, :colonist_school_address, :colonist_school_phone, :colonist_medical_insurance, :colonist_trauma, :colonist_surgery, :colonist_illness_asthma, :colonist_illness_allergy, :colonist_illness_heart_failure, :colonist_illness_diabetes, :colonist_illness_other, :colonist_medical_observation, :colonist_doctor, :colonist_know_swim, :colonist_swim_school, :colonist_swim_leave_reasons, :how_know_us, :parents_relation, :father_name, :father_age, :father_lives, :father_visit, :father_email, :father_profession, :father_work_phone, :mother_name, :mother_age, :mother_lives, :mother_visit, :mother_email, :mother_profession, :mother_work_phone, :who_register, :i_attest, :group_id, :admission)
    end

   def sortear_grupo(age, gender)
    # Define el gurpo al que debe pertenecer el colono en base a los grupos creados.
    #logger.debug ("ACA!!!!!!!!!!!!!Edad: #{age}, Genero: #{gender}")

    ### Grupos Temporada.
    #inicio_temporada = Date.new(2015,10,01)
    #fin_temporada = Date.new(2016,03,31)
    #grupos = Group.where(created_at: inicio_temporada..fin_temporada)
    #logger.debug ("ACA!!!!!!!!!!!!!grupos: #{grupos.inspect}")
    grupos = view_context.grupos_temporada

    grupo = grupos.each do |grupo|
      #initial_age: 11, maximun_age: 12
      #14.between?(10,20)
      if age.between?(grupo.initial_age, grupo.maximun_age) && grupo.sexo == gender
        break grupo.id 
      elsif age.between?(grupo.initial_age, grupo.maximun_age) && grupo.sexo == 3
        break grupo.id 
      end
      #logger.debug ("Grupo: #{grupo.inspect}")
      grupo = nil
    end
    #logger.debug ("ACA!!!!!!!!!!!!!Grupo sorteado: #{grupo}")
    return grupo
  end

  def check_recaptcha
    unless user_signed_in?
      if Rails.env.production? #Saltar comprobación en Development y Test.        
        unless verify_recaptcha(params["g-recaptcha-response"])
          #flash[:notice] = "Recaptcha verification Failed"
          redirect_to :back, alert: "Debes completar el campo CAPTCHA anti-robots de spam." and return
          #redirect_to(:back, alert: "Debes completar el campo CAPTCHA anti-robots de spam.")
          return false
        end
      end
    end
  end
end
