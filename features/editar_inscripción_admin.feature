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
Escenario: DNI unico
  Dado que existe el colono "Juan Jacinto Perez" con DNI "44123123"
  Y que existe el colono "Juan Perez" con DNI "44123321"
  Y que estoy en la pantalla de "Colonos"
  Y yo edito el 1ro colono de la lista
  Y modifico su "DNI" por "44123123" 
  Cuando presiono el botón "Guardar"
  Entonces veo un mensaje que dice "ese DNI ya está siendo utilizado"