# language: es
Característica: Editar Grupo
	Como Administrador
	Quiero un botón “Editar Grupo”
	Para poder cambiar datos que cargué mal a la hora de crear el grupo.

Antecedentes:
  Dado que estoy logueado como "Administrador"
  Dado existe un grupo llamado "Nenas 4 a 5"
  Y que estoy en la pantalla de "administración de grupos"
  Cuando yo edito un grupo

#Camino feliz
Escenario: editar un Grupo
  Y cambio "nombre" por "otra Grupo"
  Entonces veo que el nombre cambio

Escenario: agrego dato que faltaba
  Dado existe un grupo llamado "Nenas 6 a 7", sin cupo extra definido
  Y que estoy en la pantalla de "administración de grupos"
  Cuando yo edito un grupo
  Y cambio "cupo extra" por "5"
  Entonces veo que la cupo extra cambio, sin afectar al nombre del grupo

#Casos extremos
Esquema del escenario: problemas con datos
  Y completo los datos del grupo con "<nombre>", "<sexo>", "<edad_minima>", "<edad_maxima>", "<cupo>", "<cupo_extendido>"						
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "error"

  Ejemplos: faltan datos obligatorios
    | Nombre  | sexo               | edad_minima | edad_maxima | cupo | cupo_extendido|
    |         | Varones            | 2           | 7           | 25   | 5         	   |
    | Nombre3 | Mujeres            |             | 7           | 25   | 5             |
    | Nombre3 | Mixto              | 4           |             | 25   | 5             |
    | Nombre3 | Mixto              | 4           | 7           |      | 5             |
	
   Ejemplos: longitudes cupo incorrectas
    | Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
    | Nombre3 | Mixto   | 4           | 7           | 26   | 5             |
    | Nombre3 | Mixto   | 4           | 7           | 4    | 5             |

   Ejemplos: edades incorrectas
    | Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
    | Nombre3 | Mixto   | 2           | 7           | 25   | 5             |
    | Nombre3 | Mixto   | 4           | 15          | 5    | 5             |

   Ejemplos: tipos de datos incorrectos
    | Nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
    | Nombre1 | Varones | Do          | 7           | 25   | 5             |
    | Nombre1 | Mujeres | 5           | Re          | 25   | 5             |
    | Nombre1 | Mixto   | 5           | 7           | Mi   | 5             |
    | Nombre1 | Mixto   | 5           | 7           | 25   | Fa            |
    | Nombre1 | Varones | 5.1         | 7           | 25   | 5             |
    | Nombre1 | Mujeres | 5           | 5.1         | 25   | 5             |
    | Nombre1 | Mixto   | 5           | 7           | 5.1  | 5             |
    | Nombre1 | Mixto   | 5           | 7           | 25   | 5.1           |
    | Nombre1 | Varones | 5,1         | 7           | 25   | 5             |
    | Nombre1 | Mujeres | 5           | 5,1         | 25   | 5             |
    | Nombre1 | Mixto   | 5           | 7           | 5,1  | 5             |
    | Nombre1 | Mixto   | 5           | 7           | 25   | 5,1           |

@wip
Escenario: nombre unico
  Dado que existe un grupo llamado "Grupo B"
  Y que estoy en la pantalla de "administración de grupos"
  Cuando yo edito el 2do. Grupo
  Y modifico el nombre "Nenas 4 a 5"} 
  Entonces me muestra el mensaje de error que "ese nombre ya está siendo utilizado"