# language: es
Característica: Borrar inscripción.
    Como Administrador
    Quiero poder eliminar colono
    Para quitarlo de la lista ya que ha dejado de asistir a la colonia.

Antecedentes:
    Dado que estoy identificado como "Administrador"
    Y que existe el colono "Juan Perez" con DNI "44123321"
    Y que existe el colono "Juan Jacinto Perez" con DNI "45123321"
    Y que existe el colono "Laura Villanueva" con DNI "42205204"
	Y me encuentro en la pantalla "Colonos"

Escenario: eliminación correcta
	Y que he presionado el botón "Eliminar" en el renglón del colono "Juan Jacinto Perez"
    Entonces veo un mensaje "El colono ha sido eliminado correctamente."
    Y el colono "Juan Jacinto Perez" ya no aparece en la lista

Escenario: se han eliminado todos los colonos
    Dado que borre todos los colonos
    Entonces veo la lista de colonos vacía


#Pruebas que verifiquen JavaScript necesitan cambiar el drive.
@wip @to-do
Escenario: cancelar eliminación
	Y que he presionado el botón "Eliminar (con confirmación)" en el renglón del colono "Juan Jacinto Perez"
    Entonces veo un mensaje de confirmación "¿Está seguro de que desea eliminar a "Juan Jacinto Perez" de la colonia?"
    Cuando presiono el botón "No"
    Entonces el colono "Juan Jacinto Perez" sigue estando en la lista

@wip @to-do
Escenario: muestra mensaje de confirmación
    Entonces veo el mensaje de confirmación

@wip @to-do
Escenario: eliminación tras confirmación
    Entonces veo el mensaje de confirmación
    Cuando confirmo
    Entonces veo un mensaje "el colono ha sido eliminado correctamente"

@wip @to-do
Escenario: cancelar eliminación
    Entonces veo el mensaje de confirmación
    Cuando cancelo
    Entonces el colono sigue estando en la lista