# language: es
Característica: crear grupo colonia de vacaciones(tipo)
	Como Administrador
	Quiero Crear un grupo con un nombre y límites de temporada, edad, sexo.
	Para obtener un ordenamiento automático de las inscripciones recibidas a través del sitio web.

Antecedentes:
  Dado que soy administrador
  Y me identifico como "admin@club.com"
  Y que estoy en el pantalla principal

Escenario: crear un grupo.
 	Dado que hice click en el botón "Crear grupo"
 	Y que completo los datos del formulario
 	Cuando presiono el botón "Crear"
 	Entonces me muestra el mensaje "Grupo creado correctamente"

Escenario: crear un grupos sexo
 	Dado que hice click en el botón "Crear grupo"
 	Y que completo los siguientes datos del formulario
 	| Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
 	| Nombre1 | varones | 4 		  | 7 		    | 25   | 5			 |	
 	| Nombre2 | mujeres | 4 		  | 7 		    | 25   | 5			 |	
 	| Nombre3 | mixto   | 4 		  | 7 		    | 25   | 5			 |	
 	Cuando presiono el botón "Crear"
 	Entonces me muestra el mensaje "Grupo creado correctamente"

Escenario: crear todos los grupos varones
 	Dado que hice click en el botón "Crear grupo"
 	Y que completo los siguientes datos del formulario
 	| Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
 	| Nombre0 | varones | 0 		  | 3 		    | 25   | 5			 |	
 	| Nombre1 | varones | 4 		  | 5 		    | 25   | 5			 |	
 	| Nombre2 | varones | 6 		  | 7 		    | 25   | 5			 |	
 	| Nombre3 | varones | 8 		  | 9 		    | 25   | 5			 |	
 	| Nombre3 | varones | 10 		  | 12 		    | 25   | 5			 |	
 
 	Cuando presiono el botón "Crear"
 	Entonces me muestra el mensaje "Grupo creado correctamente"


#Ejemplo: Quiero que cuando se vayan inscribiendo colonos en mi sitio se vayan ordenando en grupos discriminados por sexo y edad ya que así es como manejo mis grupos.
