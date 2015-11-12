# language: es
Característica: crear grupo colonia de vacaciones
  Como administrador
  Quiero Crear un grupo con un nombre y límites de cupo, edad, sexo.
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
    | nombre  | sexo    | edad_minima | edad_maxima | cupo | cupo_extendido|
    | Nombre1 | Varones | 4           | 7           | 25   | 5             |
    | Nombre2 | Mujeres | 4           | 7           | 25   | 5             |
    | Nombre3 | Mixto   | 4           | 7           | 25   | 5             |
    | Nombre1 | Varones | 4           | 5           | 25   | 5             |
    | Nombre2 | Varones | 6           | 7           | 25   | 5             |
    | Nombre3 | Varones | 8           | 9           | 25   | 5             |
    | Nombre3 | Varones | 10          | 12          | 25   | 5             |
    | Nombre3 | Mixto   | 4           | 7           | 25   |               |

# Casos Extremos
Esquema del escenario: datos incorrectos
  Dado que hice click en el botón "Crear grupo"
  Y completo los datos del grupo con "<nombre>", "<sexo>", "<edad_minima>", "<edad_maxima>", "<cupo>", "<cupo_extendido>"           
  Cuando presiono el botón "Guardar"
  Entonces veo el mensaje "error"
  
  Ejemplos: faltan datos obligatorios
    | Nombre  | sexo                | edad_minima | edad_maxima | cupo | cupo_extendido|
    |         | Varones             | 2           | 7           | 25   | 5             |
    | Nombre2 | Seleccione el Sexo  | 4           | 100         | 25   | 5             |
    | Nombre3 | Mujeres             |             | 7           | 25   | 5             |
    | Nombre3 | Mixto               | 4           |             | 25   | 5             |
    | Nombre3 | Mixto               | 4           | 7           |      | 5             |
  
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