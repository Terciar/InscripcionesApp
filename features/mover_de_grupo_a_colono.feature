# language: es
Característica: Mover de grupo al colono.
  Como Administrador
  Quiero mover a un colono a otro grupo
  Para poder manejar los cupos y gestionar los colonos

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe el colono "Juan Jacinto Perez" con DNI "45123321"
  Y que existe el grupo "Grupo 1" para "Varones" de "9" a "11"
  Y que existe el grupo "Grupo 2" para "Mujeres" de "9" a "11"
  Y estoy en la pantalla "Colonos"

#Camino Feliz
Escenario: mover colono
  Dado que presiono el botón "Mover" en el renglón del colono "Juan Jacinto Perez"
  Entonces veo la pantalla para cambiar de grupo
  Dado que selecciono de la lista "Grupo 1"
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "El colono "Juan Jacinto Perez" ha sido movido exitosamente al "Grupo 1"."

Escenario: Existen más de un grupo 
  Dado que presiono el botón "Mover" en el renglón del colono "Juan Jacinto Perez"
  Entonces veo una lista con todos los grupos menos el grupo al que corresponde actualmente a ese colono.
  Dado que selecciono de la lista "Grupo 2"
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "El colono "Juan Jacinto Perez" ha sido movido exitosamente al "Grupo 2"."

Escenario: arrepentido
  Dado que presiono el botón "Mover" en el renglón del colono "Juan Jacinto Perez"
  Entonces veo la pantalla para cambiar de grupo
  Dado que selecciono de la lista "Grupo 1"
  Cuando presiono el botón "Volver"
  Entonces regreso a la pantalla "Colonos"
  Y el colono "Juan Jacinto Perez" sigue perteneciendo al "Grupo 1"

#Casos extremos
# Grupos insuficientes
@wip @to-do
Escenario: Existe solo un grupo definido.
  Entonces veo un mensaje "No hay grupo donde mover a "<nombre>""

# Cupos excedidos


# Sexo incorrecto: Mover un varon a un grupo de mujeres, mover una mujer a un grupo de varones.