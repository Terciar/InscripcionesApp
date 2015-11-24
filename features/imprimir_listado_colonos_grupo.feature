# language: es
Característica: imprimir listado de un grupo
Como Administrador
    Quiero imprimir un listado del grupo 
    Para consultar datos sobre algún colono en cualquier momento sin necesitar la pc.

Antecedentes:
    Dado que estoy identificado como "Administrador"
    Y que existe el grupo "Grupo 1" para "Varones" de "9" a "11"
    Y me encuentro en la pantalla "Ver colonos del Grupo 1"

#Cammino feliz    
Escenario: Existen inscriptos confirmados.
  Dado que existen 4 inscriptos en el grupo "Grupo 1" confirmados
    | Colono                    | Edad | Sexo  | DNI      | Nadar |
    | Eva Brown                 | 5    | Mujer | 40875325 | SI    |
    | Josemir Lujambio          | 9    | Varón | 38475325 | SI    |
    | Sebastián Pascual Rambert | 9    | Varón | 38412871 | SI    |
    | Juan Román Riquelme       | 10   | Varón | 37455687 | SI    |
  Cuando presiono el botón "Imprimir Lista"
  Entonces se imprime una lista con los datos de los 4 inscripos

#Caso extremo
@wip
Escenario: No existen inscriptos confirmados
  Dado que no hay inscriptos al grupo.
  Entonces veo un mensaje "No existen inscriptos confirmados para el grupo: "<nombre_grupo>""