# language: es
Característica: Inscripción a colonia
  Como visitante del sitio y “Tutor”
  Quiero poder inscribir a mi hijo/tutelado en la colonia
  Para que tenga un lugar en la colonia de vacaciones

#Camino feliz.
Escenario: Inscripción con datos correctos.
  Dado que estoy en la página inscripciones de la web de la colonia buena onda 
  Y que completo los datos del formulario de inscripción
  Cuando presiono el botón "Inscribir"
  Entonces veo el mensaje "Bienvenido a la familia Buena Onda. Ya estás pre-inscripto. No olvides pasar por el club [dirección] de (9) a (18) dentro de las próximas 72 hs para confirmar la inscripción de tu hijo/a Cosme Fulanito y abonar la inscripción."
  Y recibo un mail que me dice "que tengo que presentarme a pagar."

Esquema del escenario: datos correctos
  Dado que hice click en el botón "Inscribir"
  Y completo los datos de mi tutelado y  míos con "<nombre_colono>", "<sexo_colono>", "<dni_colono>", "<fecha_nac_colono>","<domicilio_colono>", "<telefono_colono>", "<email_colono>", "<primera_vez>", "<colegio>", "<grado>", "<direccion_colegio>", "<telefono_colegio>", "<obra_social_colono>", "<traumatismos_colono>", "<cirujias_colono>","<enfermedades_colono_asma>","<enfermedades_colono_alergia>","<enfermedades_colono_ins_card>","<enfermedades_colono_diabetes>","<enfermedades_colono_otra>","<tratamiento_colono>","<medico_colono_informado>","<sabe_nadar_colono>","<concurrio_a_escuela_natacion_colono>","<a_que_escuela_natacion>","<sabe_nadar_colono>","<por_que_abandono_colono>","<como_conocio_buena_onda>","<estado_civil_padres>","<nombre_padre>","<edad_padre>","<vive_padre>","<ve_padre_habitualmente>","<email_padre>","<profesion_padre>","<telefono_laboral_padre>","<nombre_madre>","<edad_madre>","<vive_madre>","<ve_madre_habitualmente>","<mail_madre>","<profesion_madre>","<telefono_laboral_madre>","<doy_fe_check>"
  Cuando presiono el botón "Inscribir"
  Entonces veo el mensaje "Bienvenido a la familia Buena Onda. Ya estás pre-inscripto. No olvides pasar por el club [dirección] de (9) a (18) dentro de las próximas 72 hs para confirmar la inscripción de tu hijo/a Cosme Fulanito y abonar la inscripción." 
  Y recibo un mail que me dice "que tengo que presentarme a pagar."


#  Ejemplos: datos correctos
Ejemplos: : datos correctos
  |nombre_colono     |sexo_colono|dni_colono|fecha_nac_colono|domicilio_colono     |telefono_colono|email_colono        |primera_vez|colegio        |grado|direccion_colegio          |telefono_colegio|obra_social_colono|traumatismo_colono|cirujias_colono|enfermedades_colono_asma|enfermedades_colono_alergia|enfermedades_colono_ins_card|enfermedades_colono_diabetes|enfermedades_colono_otra|tratamiento_colono|medico_colono_informado|sabe_nadar_colono|concurrio_a_escuela_natacion_colono|a_que_escuela_natacion|por_que_abandono_colono|como_conocio_buena_onda|estado_civil_padres|nombre_padre  |edad_padre|vive_padre|ve_padre_habitualmente|email_padre         |profesion_padre   |telefono_laboral_padre|nombre_madre|edad_madre|vive_madre|ve_madre_habitualmente|mail_madre          |profesion_madre|telefono_laboral_madre|doy_fe_check|
  |Juan Jacinto Perez|Varon      |54.012.456|13/08/2008      |Av. Cabildo Nro 10550|444-4444-4444  |colono12@hotmail.com|no         |Sagrado corazón|3    |Luis María Campos Nro. 5550|11 425587963    |osde              |no                |no             |no                      |no                         |no                          |no                          |no                      |no                |no                     |si               |no                                 |no                    |ninguna                |página de internet     |casados            |Patricio Perez|35        |si        |si                    |correo_papa@mail.com|arquero de  futbol|11 74569247           |Alba Roggio |33        |si        |si                    |correo_mama@mail.com|arquitecta     |11 24685391           |true        |

# Casos Extremos.
Escenario: datos incorrectos “Falta nombre colono”
     Dado que estoy en la página inscripciones de la web de la colonia buena onda 
     Y que completo los datos del formulario de inscripción
     Cuando presiono el botón "Inscribir"
     Entonces veo el mensaje "error"
  Ejemplos: 
    | Nombre   | sexo      | edad_minima | edad_maxima | cupo | cupo_extendido|








Escenario: agrega al grupo correcto.
    # Dado que inscribo un nene de 4, 
    # Y que existe un grupo de 4 a 5.
    # Entonces asocia el inscripto al grupo de 4.

Característica: Ver inscripción.
# Muestra los datos de la inscripción que acabo de finalizar.

Escenario: No hay cupo.

Característica: Generar Ficha de Inscripción. {opcional}
# Generar documento para imprimir la ficha de inscripción. Osea imprimir la pantalla.