# language: es
Característica: Borrar inscripción desde grupo.
    Como Administrador
    Quiero poder eliminar colono
    Para quitarlo de la lista ya que ha dejado de asistir a la colonia.

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe el grupo "Grupo 1" para "Varones" de "9" a "11"
  Y que existe el grupo "Grupo 2" para "Mujeres" de "9" a "11"
  Y que existe el colono "Juan Jacinto Perez" con DNI "45123321" perteneciente al grupo
  Y que existe el colono "Laura Villanueva" con DNI "42205204" perteneciente al grupo
  Y estoy en la pantalla "Grupos"
  Y presione el botón "Colonos" en el renglón del grupo "Grupo 1".
 
Escenario: eliminación correcta
	Y que he presionado el botón "Eliminar" en el renglón del colono "Juan Jacinto Perez"
    Entonces veo un mensaje "El colono ha sido eliminado correctamente."
    Y el colono "Juan Jacinto Perez" ya no aparece en la lista

Escenario: se han eliminado todos los colonos
    Dado que borre todos los colonos
    Y estoy en la pantalla "Grupos"
    Y presione el botón "Colonos" en el renglón del grupo "Grupo 1".
    Entonces veo la lista de colonos del grupo vacía
