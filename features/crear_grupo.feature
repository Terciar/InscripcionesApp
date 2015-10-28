# language: es
Característica: crear grupo colonia de vacaciones(tipo)
	Como Administrador
	Quiero Crear un grupo con un nombre y límites de temporada, edad, sexo.
	Para obtener un ordenamiento automático de las inscripciones recibidas a través del sitio web.

Antecedentes:
  Dado que soy administador registrado
  Y me identifico como "admin@club.com"
  Y que estoy en la pantalla de "Inicio"

Escenario: crear un grupo.
 	Dado que hice click en el botón "Crear grupo"
 	Y que completo los datos del formulario
 	Cuando presiono el botón "Crear"
 	Entonces veo el mensaje "Grupo creado correctamente"