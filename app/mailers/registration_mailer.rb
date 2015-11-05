class RegistrationMailer < ApplicationMailer
      default from: 'contacto@terciar.info'

  def confirm_registration_email(registration)
    @registration = Registration.find(registration.id)
    
    @url  = "http://terciar-inscripciones.herokuapp.com/registrations/#{@registration.id}/"
    mail(to: @registration.mather_email, subject: 'Colonia Buena Onda. Inscripción 2015')
  end
end