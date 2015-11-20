# language: es
Característica: mostrar inscripción
  Como Administrador
  Quiero ver los datos de un colono inscripto
  Para averiguar alguno de los datos que fueron ingresados en su ficha de inscripción.

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe un colono "Juan Alberto Badía"
  Y estoy en la pantalla "Colonos"

Escenario:
  Y presiono el botón "Mostrar"
  Entonces veo la pantalla "datos del colono" con los datos que cargó en el momento en que se inscribió.
|Temporada              | 2015|
|Apellido y Nombre      | Juan Alberto Badía|
|Edad                   | 5 |
|Fecha de nacimiento    | 21/09/2010|
|DNI                    | 41248778|
|Domicilio              | Grecia 3435 1º B|
|Teléfono               | 11 1542769881|
|Dirección de eMail     | juanbadi@live.com|
|Colegio al que concurre| Esclavas del sagrado corazón de jesús|
|Grado/Año              | 5.º|
|Dirección              | Luis María Campos N 3877|
|Teléfono               | 4675991|
|Obra social/prepaga    | Osde|
|Traumatismos           | Ninguno|
|Operaciones (cirugías) | Ninguno|
|ASMA                   | No  |
|ALERGIAS               | No  |
|INSUFICIENCIA CARDIACA | No  |
|DIABETES               | No  |
|Otras enfermedades (Especificar)     |   ----------| 
|¿Actualmente está en observación y/o tratamiento alguno? (físico y/o psicológico) | No |
|¿El médico de cabecera está informado de la actividad que vas a realizar?          | Si |
|¿Sabe nadar?                             | Si |
|¿Concurrió a otra Escuela de Natación anteriormente? ¿A cuál?                                                                         | Hipocampo |
|¿Por qué dejó de concurrir? | Era lejos de mi casa|
|¿Cómo se informo de "Buena Onda"? | Vi su página en Internet|
|Estado civil de los padres | Casados|
|Nombre y Apellido del Padre | Rogelio Ramón Badía |
|Edad del Padre         | 41 |
|Vive                   | si |
|¿Lo ve habitualmente?  | si |
|Dirección de email     | papa_badi@yahoo.com |
|Profesión              | Abogado |
|Teléfono laboral       | 114781004 |
|Nombre y apellido      | Juana Mateyko|
|Edad                   | 34 |
|Vive                   | si |
|¿La ve habitualmente?  | si |
|Dirección de email     | juanitamat@ole.es|
|Profesión              | ama de casa|
|Teléfono laboral       | 1145762214 |
|Quién registró               | Madre|
|Dio fe                 | si |
|Posible grupo:         |   |

#Y completo los datos de mi tutelado y míos con "<nombre_colono>", "<edad_colono>", "<fecha_nac_colono>", "<sexo_colono>", "<dni_colono>", "<domicilio_colono>", "<telefono_colono>", "<email_colono>", "<colegio>", "<grado>", "<direccion_colegio>", "<telefono_colegio>", "<obra_social_colono>", "<traumatismo_colono>", "<cirujias_colono>", "<enfermedades_colono_asma>", "<enfermedades_colono_alergia>", "<enfermedades_colono_ins_card>", "<enfermedades_colono_diabetes>", "<enfermedades_colono_otra>", "<tratamiento_colono>", "<medico_colono_informado>", "<sabe_nadar_colono>", "<a_que_escuela_natacion>", "<por_que_abandono_colono>", "<como_conocio_buena_onda>", "<estado_civil_padres>", "<nombre_padre>", "<edad_padre>", "<vive_padre>", "<ve_padre_habitualmente>", "<email_padre>", "<profesion_padre>", "<telefono_laboral_padre>", "<nombre_madre>", "<edad_madre>", "<vive_madre>", "<ve_madre_habitualmente>", "<mail_madre>", "<profesion_madre>", "<telefono_laboral_madre>", "<quien_registra>", "<doy_fe_check>"
#Ejemplos: dato colono
#|nombre_colono      |edad_colono|fecha_nac_colono|sexo_colono|dni_colono| domicilio_colono     |telefono_colono|email_colono        | colegio                               |grado|direccion_colegio        |telefono_colegio|obra_social_colono|traumatismo_colono|cirujias_colono|enfermedades_colono_asma|enfermedades_colono_alergia|enfermedades_colono_ins_card|enfermedades_colono_diabetes|enfermedades_colono_otra|tratamiento_colono|medico_colono_informado|sabe_nadar_colono|a_que_escuela_natacion|por_que_abandono_colono|como_conocio_buena_onda  |estado_civil_padres|nombre_padre        |edad_padre|vive_padre|ve_padre_habitualmente|email_padre         |profesion_padre |telefono_laboral_padre|nombre_madre |edad_madre|vive_madre|ve_madre_habitualmente|mail_madre        |profesion_madre|telefono_laboral_madre|quien_registra |doy_fe_check|
#|Badia Juan Alberto |5          |21/09/2010      |Varón      |41248778  | Grecia 3435 1º B     |111542769881   |juanbadi@live.com   | Esclavas del sagrado corazón de jesús |5    |Luis María Campos N 3877 |4675991         |Osde              |NO                |NO             |NO                      |NO                         |NO                          |NO                          |NO                      |                  |SI                     |SI               |HIPOCAMPO             |ERA LEJOS DE MI CASA   |VI SU PAGINA EN INSTERNET|Casados            |Badía Rogelio Ramón |41        |si        |si                    |papa_badi@yahoo.com |Abogado         |114781004             |Juana Mateyko|34        |si        |si                    |juanitamat@ole.es |ama de casa    |1145762214            |madre          |true        |

