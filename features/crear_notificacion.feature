# language: es
Característica: Enviar Mensaje a un Grupo
  Como "Administrador"
  Quiero Enviar un mensaje a un grupo definido previamente.
  Para hacerles llegar por correo electrónico información relevante sobre el grupo en forma de texto.

Antecedentes:
#  Dado que estoy identificado como "Administrador"
#  Y he presionado el botón "Nuevo Mensaje" del menú principal

#Camino Feliz
@wip @to-do
Escenario: todo bien
  Dado que existe un grupo llamado "Grupo"
  Y que estoy en la pantalla de "Nuevo Mensaje"
  Y que he seleccionado el grupo "Grupo 1"
  Y he escrito un mensaje.
  Cuando presiono el botón "Enviar mensaje "
  Entonces veo el mensaje "Se actualizarón los datos correctamente."

#Ejemplo: Íbamos a hacer un campamento el fin de semana pero hay alerta meteorológica y lo suspenderemos para el próximo fin de semana.
#Ejemplo: Quiero avisar de una bicicleteada de padres e hijos que realizaremos la próxima semana.
#Ejemplo: Quiero invitar a todas las madres a la piscina con un descuento por el mes de la madre.