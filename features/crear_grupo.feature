# language: es
Característica: crear grupo colonia de vacaciones(tipo)
	Como Administrador
	Quiero Crear un grupo con un nombre y límites de temporada, edad, sexo.
	Para obtener un ordenamiento automático de las inscripciones recibidas a través del sitio web.

Antecedentes:
  Dado que soy administador registrado
  Y me identifico como "admin@club.com"
  Y que estoy en la pantalla de "Inicio"

#Camino feliz.
Escenario: crear un grupo.
 	Dado que hice click en el botón "Crear grupo"
 	Y que completo los datos del formulario
 	Cuando presiono el botón "Guardar"
 	Entonces veo el mensaje "Grupo creado correctamente"

Esquema del escenario: datos correctos
  Dado que hice click en el botón "Crear grupo"
  Y completo los datos del grupo con "<nombre>", "<sexo>", "<edad_minima>", "<edad_maxima>", "<cupo>", "<cupo_extendido>"						
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "Grupo creado correctamente"

  Ejemplos: casos positivos
    | Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
    | Nombre1 | Varones | 4           | 7           | 25   | 5         	   |
    | Nombre2 | Mujeres | 4           | 7           | 25   | 5         	   |
    | Nombre3 | Mixto   | 4           | 7           | 25   | 5         	   |
	| Nombre3 | Mixto   | 4           | 7           | 25   |         	   |

	
@wip
Escenario: datos incorrectos 
    Dado que estoy identificado como Administrador 
	Y me encuentro en la pantalla “Nuevo Grupo”.
    Cuando completo el formulario y presiono el botón “crear grupo”
    | Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
    | Nombre1 | varones | 2           | 7           | 25   | 5         	   |
    | Nombre2 | mujeres | 4           | 100         | 25   | 5         	   |
    | Nombre3 | mixto   |             | 7           | 25   | 5             |
	| Nombre3 | mixto   | 4           |             | 25   | 5             |
	| Nombre3 | mixto   | 4           | 7           |      | 5             |
	| Nombre3 | mixto   | 4           | 7           | 26   | 5             |
	| Nombre3 | mixto   | 4           | 7           | 4    | 5             |
	Entonces veo el mensaje "Error"
