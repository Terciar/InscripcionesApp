# language: es
Característica: Mover colono inscripto de grupo
  Como Administrador
  Quiero mover a un colono a otro grupo
  Para poder manejar los cupos y gestionar los colonos

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe el grupo "Grupo 1" para "Varones" de "9" a "11"
  Y que existe el grupo "Grupo 2" para "Mujeres" de "9" a "11"
  Y que existe un colono "Juan Alberto Badía" perteneciente al grupo
  Y estoy en la pantalla "Grupos"
  Y presione el botón "Colonos" en el renglón del grupo "Grupo 1".

#Camino Feliz
Escenario: mover colono
  Dado que presiono el botón "Mover" en el renglón del colono "Juan Alberto Badía"
  Entonces veo la pantalla para cambiar de grupo
  Dado que selecciono de la lista "Grupo 1"
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "El colono "Juan Alberto Badía" ha sido movido exitosamente al "Grupo 1"."

Escenario: Existen más de un grupo 
  Dado que presiono el botón "Mover" en el renglón del colono "Juan Alberto Badía"
  Entonces veo una lista con todos los grupos menos el grupo al que corresponde actualmente a ese colono.
  Dado que selecciono de la lista "Grupo 2"
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "El colono "Juan Alberto Badía" ha sido movido exitosamente al "Grupo 2"."

Escenario: arrepentido
  Dado que presiono el botón "Mover" en el renglón del colono "Juan Alberto Badía"
  Entonces veo la pantalla para cambiar de grupo
  Dado que selecciono de la lista "Grupo 1"
  Cuando presiono el botón "Volver"
  Entonces regreso a la pantalla "Grupos"
  Y presiono el botón "Colonos" en el renglón del grupo "Grupo 1".
  Y el colono "Juan Alberto Badía" sigue perteneciendo al "Grupo 1"







#Caso extremo: Grupos insuficientes
@wip @to-do
Escenario: Existe solo un grupo definido.
    Entonces veo un mensaje "No hay grupo donde mover a "nombre""

#Caso extremo: Cupos exedidos