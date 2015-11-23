# language: es
Característica: Aceptar inscripción.
  Como Administrador
  Quiero Confirmar la inscripción de un colono a la colonia
  Para poder calcular los lugares que quedan y armar los grupos de colonos    

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe el grupo "Grupo 1" para "Varones" de "9" a "11"
  Y que existe el grupo "Grupo 2" para "Mujeres" de "9" a "11"
  Y que existe el colono "Juan Jacinto Perez" con DNI "45123321" perteneciente al grupo
  Y que existe el colono "Laura Villanueva" con DNI "42205204" perteneciente al grupo
  Y estoy en la pantalla "Grupos"
  Y presione el botón "Colonos" en el renglón del grupo "Grupo 1".
 

#Camino Feliz
Escenario: aceptar colono
  Dado que presiono el botón "Confirmar" en el renglón del colono "Juan Jacinto Perez"
  Entonces veo un mensaje "Ha sido CONFIRMADA la inscripción de "Juan Jacinto Perez"."
  Entonces el botón cambia a la palabra "Aceptado"
  Y el estado del colono "Juan Jacinto Perez" cambia a "Aceptado"

Escenario: rechazar colono
  Dado que presiono el botón "Rechazar" en el renglón del colono "Juan Jacinto Perez"
  Entonces veo un mensaje "Ha sido RECHAZADA la inscripción de "Juan Jacinto Perez"."
  Entonces el botón cambia a la palabra "Rechazado"
  Y el estado del colono "Juan Jacinto Perez" cambia a "Rechazado"