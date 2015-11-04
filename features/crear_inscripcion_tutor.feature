# language: es
Característica: Inscripción a colonia
  Como visitante del sitio y “Tutor”
  Quiero poder inscribir a mi hijo/tutelado en la colonia
  Para que tenga un lugar en la colonia de vacaciones

Antecedentes:
  Dado que estoy en la página inscripciones de la web de la colonia buena onda 

#Camino feliz.
Escenario: Inscripción con datos correctos.
  Y que completo los datos del formulario de inscripción
  Cuando presiono el botón "Inscribir"
  Entonces veo el mensaje de bienvenida a la colonia


 Esquema del escenario: datos correctos
   Y completo los datos de mi tutelado y míos con "<nombre_colono>", "<edad_colono>", "<fecha_nac_colono>", "<sexo_colono>", "<dni_colono>", "<domicilio_colono>", "<telefono_colono>", "<email_colono>", "<colegio>", "<grado>", "<direccion_colegio>", "<telefono_colegio>", "<obra_social_colono>", "<traumatismo_colono>", "<cirujias_colono>", "<enfermedades_colono_asma>", "<enfermedades_colono_alergia>", "<enfermedades_colono_ins_card>", "<enfermedades_colono_diabetes>", "<enfermedades_colono_otra>", "<tratamiento_colono>", "<medico_colono_informado>", "<sabe_nadar_colono>", "<a_que_escuela_natacion>", "<por_que_abandono_colono>", "<como_conocio_buena_onda>", "<estado_civil_padres>", "<nombre_padre>", "<edad_padre>", "<vive_padre>", "<ve_padre_habitualmente>", "<email_padre>", "<profesion_padre>", "<telefono_laboral_padre>", "<nombre_madre>", "<edad_madre>", "<vive_madre>", "<ve_madre_habitualmente>", "<mail_madre>", "<profesion_madre>", "<telefono_laboral_madre>", "<quien_registra>", "<doy_fe_check>"
   Cuando presiono el botón "Inscribir"
   Entonces veo el mensaje de bienvenida a la colonia

  Ejemplos: datos correctos
    |nombre_colono     |edad_colono|fecha_nac_colono|sexo_colono|dni_colono| domicilio_colono     |telefono_colono|email_colono        | colegio        |grado|direccion_colegio          |telefono_colegio|obra_social_colono|traumatismo_colono|cirujias_colono|enfermedades_colono_asma|enfermedades_colono_alergia|enfermedades_colono_ins_card|enfermedades_colono_diabetes|enfermedades_colono_otra|tratamiento_colono|medico_colono_informado|sabe_nadar_colono|concurrio_a_escuela_natacion_colono|a_que_escuela_natacion|por_que_abandono_colono|como_conocio_buena_onda|estado_civil_padres|nombre_padre  |edad_padre|vive_padre|ve_padre_habitualmente|email_padre         |profesion_padre   |telefono_laboral_padre|nombre_madre|edad_madre|vive_madre|ve_madre_habitualmente|mail_madre          |profesion_madre|telefono_laboral_madre|quien_registra |doy_fe_check|
    |Juan Jacinto Perez| 5         |13/08/2008      |Varon      |54012456  | Av. Cabildo Nro 10550|44444444444    |colono12@hotmail.com| Sagrado corazón|3    |Luis María Campos Nro. 5550|11 425587963    |osde              |NO                |NO             |NO                      |NO                         |NO                          |NO                          |NO                      |NO                |NO                     |SI               |NO                                 |NO                    |ninguna                |página de internet     |Casado             |Patricio Perez|35        |SI        |SI                    |correo_papa@mail.com|arquero de  futbol|11 74569247           |Alba Roggio |33        |SI        |SI                    |correo_mama@mail.com|arquitecta     |11 24685391           |Madre          |true        |

# # Casos Extremos.
# @wip
# Esquema del escenario: datos incorrectos “Falta nombre colono”
#      Dado que estoy en la página inscripciones de la web de la colonia buena onda 
#      Y que completo los datos del formulario de inscripción
#      Cuando presiono el botón "Inscribir"
#      Entonces veo el mensaje "error"
#   Ejemplos: 
#     | Nombre   | sexo      | edad_minima | edad_maxima | cupo | cupo_extendido|
#     | Nombre   | sexo      | edad_minima | edad_maxima | cupo | cupo_extendido|

#Escenario: agrega al grupo correcto.
    # Dado que inscribo un nene de 4, 
    # Y que existe un grupo de 4 a 5.
    # Entonces asocia el inscripto al grupo de 4.

#Escenario: No hay cupo.

#Escenario: Completar CAPTCHA.

@wip @to-do
Escenario: Inscripción con datos correctos + email confirmación