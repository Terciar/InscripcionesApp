# language: es
Característica: Editar inscripción a colonia
  Como administrador del sitio
  Quiero poder modificar los datos de un colono inscripto en la colonia
  Para corregir lo que haga falta y mantener los datos actualizados

Antecedentes:
  Dado que soy administador registrado
  Y me identifico como "admin@club.com"


#Camino feliz.
Escenario: Editar con datos correctos.
  Dado que existe el colono Juan Perez
  Y que estoy en la pantalla de "Colonos"  
  Cuando presiono el botón "Editar"
  Y que completo los datos del formulario de inscripción
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "Se actualizarón los datos correctamente."

#Casos extremos.
#Escenario: DNI unico
#  Dado que existe el colono Juan Jacinto Perez
#  Y que existe el colono Juan Perez
#  Y que estoy en la pantalla de "Colonos"
#  Cuando yo edito el 2do. colono
#  Y modifico de la categoría los datos "29015123" 
#  Entonces me muestra el mensaje de error que "ese DNI ya está siendo utilizado"