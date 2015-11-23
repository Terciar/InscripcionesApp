# language: es
Característica: Ver colonos del Grupo (listado)
  Como Administrador
  Quiero acceder a una lista de inscriptos de un grupo
  Para ver quienes están inscriptos ese grupo.

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y he presionado el botón "Ver Grupos" del menú principal

#Camino feliz
Escenario: Hay 4 inscriptos al grupo (ordenados alfabéticamente)
  Dado que hay 4 inscriptos en el grupo
    | Colono                    | Edad | Sexo  | DNI      | Nadar |
    | Eva Brown                 | 5    | Mujer | 40875325 | SI    |
    | Josemir Lujambio          | 9    | Varón | 38475325 | SI    |
    | Sebastián Pascual Rambert | 9    | Varón | 38412871 | SI    |
    | Juan Román Riquelme       | 10   | Varón | 37455687 | SI    |
  Cuando presiono el botón "Colonos"
  Entonces veo la lista de  los 4 inscriptos a ese grupo.

Escenario: Hay 4 inscriptos al grupo (ordenados alfabéticamente)
  Dado que hay 4 inscriptos en el grupo
    | Colono                    | Edad | Sexo  | DNI      | Nadar |
    | Eva Brown                 | 5    | Mujer | 40875325 | SI    |
    | Josemir Lujambio          | 9    | Varón | 38475325 | SI    |
    | Sebastián Pascual Rambert | 9    | Varón | 38412871 | SI    |
    | Juan Román Riquelme       | 10   | Varón | 37455687 | SI    |
  Cuando presiono el botón "Colonos"
  Entonces debo ver "Juan Román Riquelme" antes que "Sebastián Pascual Rambert"

Escenario: No hay inscriptos al grupo
  Dado que no hay inscriptos al grupo.
  Cuando presiono el botón "Colonos"
  Entonces veo una lista vacía.