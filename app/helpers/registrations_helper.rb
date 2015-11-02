module RegistrationsHelper
  def boolean_to_text(boolean)
    if boolean == true
      "Si"
    else
      "No"
    end
  end

  def gender_to_text(gender)
    if gender == 1
      "Varon"
    else
      "Mujer"
    end
  end

  def gender_active(gender, posicion)
    if gender == 1 && posicion == 1
        "btn btn-primary fa fa-male active"
      elsif gender == 1 && posicion == 2
        "btn btn-primary fa fa-female"
      elsif gender == 2 && posicion == 2
        "btn btn-primary fa fa-female active"
      else
        "btn btn-primary fa fa-male"
    end
  end

  ### Grupos Temporada.
  def grupos_temporada
    inicio_temporada = Date.new(2015,10,01)
    fin_temporada = Date.new(2016,03,31)
    grupos = Group.where(created_at: inicio_temporada..fin_temporada)
    #logger.debug ("ACA!!!!!!!!!!!!!grupos: #{grupos.inspect}")
  end
end
