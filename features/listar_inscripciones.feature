# language: es
Característica: listar inscripciones a colonia
  Como administrador del sitio
  Quiero poder ver una lista de todos los colonos inscripto a la colonia
  Para ver quienes están inscriptos ese grupo.

Antecedentes:
  Dado que soy administador registrado
  Y me identifico como "admin@club.com"
  Y que estoy en la pantalla de "Inicio"
  Y que presione el botón "Colonos"
  Y estoy en la pantalla "Colonos"

#Camino feliz
@wip
Escenario: Hay 4 inscriptos
    Dado que hay 4 inscriptos
    Y me encuentro en la pantalla "Colonos"
    | Apellido y Nombe    | Edad | Sexo | Tel_contacto |
    | Basterrica Juan     | 4    | M    | 15432674558  |
    | Blanco Octavio      | 5    | M    | 15432471111  |
    | Nieves Raúl         | 4    | M    | 15474114558  |
    | Olarticoche Alberto | 4    | M    | 15432417888  |
    Entonces veo la lista de  los 4 inscriptos a ese grupo.

@wip
Escenario: Hay 4 inscriptos (ordenados alfabéticamente)
  Dado que hay 4 inscriptos
  Y me encuentro en la pantalla "Colonos"
  Cuando presiono el botón "Ver Inscriptos"
    | Apellido y Nombe    | Edad | Sexo | Tel_contacto |
    | Blanco Octavio      | 5    | M    | 15432471111  |
    | Nieves Raúl         | 4    | M    | 15474114558  |
    | Olarticoche Alberto | 4    | M    | 15432417888  |
    | Basterrica Juan     | 4    | M    | 15432674558  |
  Entonces debo ver "Basterrica" antes que "Blanco"

@wip
Escenario: No hay inscriptos al grupo
    Dado que no hay inscriptos al grupo.
    Entonces veo una lista vacía.