# language: es
Característica: Eliminar Grupo
    Como Administrador
    Quiero poder eliminar un grupo
    Para eliminarlo cuando esté de más o que quiera descartar en esta temporada.

Antecedentes:
    Dado que estoy identificado como "Administrador"
    Y que existe un grupo llamado "Varones 2013"
    Y me encuentro en la pantalla "ver todos los grupos"
    Cuando presiono el botón "Eliminar"

Escenario: Eliminar grupo seleccionado
    Entonces veo un mensaje "Grupo eliminado correctamente."

Escenario: se borraron todos los grupos
    Dado que borre todos los grupos
    Entonces veo una lista vacía

@wip @to-do
Escenario: muestra mensaje de confirmación
    Entonces veo el mensaje de confirmación

@wip @to-do
Escenario: eliminación tras confirmación
    Entonces veo el mensaje de confirmación
    Cuando confirmo
    Entonces veo un mensaje "Grupo eliminado correctamente"

@wip @to-do
Escenario: cancelar eliminación
    Entonces veo el mensaje de confirmación
    Cuando cancelo
    Entonces el grupo sigue estando en la lista