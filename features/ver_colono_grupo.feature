# language: es
Característica: Ver datos colono inscripto a un Grupo
  Como Administrador
  Quiero ver los datos de un colono inscripto en un grupo
  Para averiguar alguno de los datos que fueron ingresados en su ficha de inscripción.

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe el grupo "Grupo 1" para "Varones" de "9" a "11"
  Y que existe un colono "Juan Alberto Badía" perteneciente al grupo
  Y he presionado el botón "Ver Grupos" del menú principal
  Y presione el botón "Colonos" en el renglón del grupo "Grupo 1".

Escenario:
  Y presione el botón "Mostrar"
  Entonces veo la pantalla "datos del colono" con los datos que cargó en el momento en que se inscribió.
#Ejemplo datos del colono
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
|Nombre y Apellido      | Juana Mateyko|
|Edad                   | 34 |
|Vive                   | si |
|¿La ve habitualmente?  | si |
|Dirección de email     | juanitamat@ole.es|
|Profesión              | ama de casa|
|Teléfono laboral       | 1145762214 |
|Quién registró         | Madre|
|Dio fe                 | si |
|Posible grupo:         |   |