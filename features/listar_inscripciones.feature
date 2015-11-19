# language: es
Característica: listar inscripciones a colonia
  Como administrador del sitio
  Quiero poder ver una lista de todos los colonos inscripto a la colonia
  Para ver quienes están inscriptos

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que estoy en la pantalla de "Inicio"
  Y que presione la opción "Listado Colonos" del menú
  Y estoy en la pantalla "Colonos"

#Camino feliz
Escenario: Hay 4 inscriptos
  Dado que hay 4 inscriptos
    | Group    | Colono                    | Edad | Sexo  | DNI      | Nadar |
    | group1 m | Eva Brown                 | 5    | Mujer | 40875325 | SI    |
    | group4 v | Josemir Lujambio          | 9    | Varón | 38475325 | SI    |
    | group4 v | Sebastián Pascual Rambert | 9    | Varón | 38412871 | SI    |
    | group4 v | Juan Román Riquelme       | 10   | Varón | 37455687 | SI    |
  Y me encuentro en la pantalla "Colonos"
  Entonces veo la lista de los 4 inscriptos.

Escenario: Hay 4 inscriptos (ordenados alfabéticamente)
  Dado que hay 4 inscriptos
    | Group    | Colono                    | Edad | Sexo  | DNI      | Nadar |
    | group1 m | Eva Brown                 | 5    | Mujer | 40875325 | SI    |
    | group4 v | Josemir Lujambio          | 9    | Varón | 38475325 | SI    |
    | group4 v | Sebastián Pascual Rambert | 9    | Varón | 38412871 | SI    |
    | group4 v | Juan Román Riquelme       | 10   | Varón | 37455687 | SI    |
  Y me encuentro en la pantalla "Colonos"
  Entonces debo ver "Juan Román Riquelme" antes que "Sebastián Pascual Rambert"

Escenario: No hay inscriptos
  Dado que no hay inscriptos
  Y me encuentro en la pantalla "Colonos"
  Entonces veo una lista vacía.