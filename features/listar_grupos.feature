# language: es
Característica: Ver todos los Grupos. (Listado)
	Como Administrador.
	Quiero acceder a una lista con información de los grupos de la colonia de vacaciones.
	Para obtener una visión general los mismos y sus cupos.

Antecedentes:
    Dado que estoy identificado como "Administrador" 
	Y he presionado el botón "Ver Grupos" del menú principal 
	Y me encuentro en la pantalla "ver todos los grupos"

#Camino feliz.
Escenario: Hay grupos creados ordenados alfabéticamente
	Dado que hay 3 grupos creados.
    | nombre      | sexo    | initial_age | maximun_age | quota|    
    | Mixto 0 a 3 | Mixto   | 4           | 7           | 25   |   
    | Nenas 4 a 5 | Mujeres | 4           | 5           | 25   |   
    | Nenes 6 a 7 | Mixto   | 6           | 7           | 25   |   
    Y me encuentro en la pantalla "ver todos los grupos"
    Entonces veo un listado con 3 grupos

Escenario: grupos creados ordenados alfabéticamente
	Dado que hay 3 grupos creados.
    | nombre      | sexo    | initial_age | maximun_age | quota|    
    | Nenes 0 a 3 | Varones | 4           | 7           | 25   |   
    | Nenas 4 a 5 | Mujeres | 4           | 5           | 25   |   
    | Mixto 0 a 3 | Mixto   | 6           | 7           | 25   |   
    Y me encuentro en la pantalla "ver todos los grupos"
    Entonces debo ver "Mixto 0 a 3" antes que "Nenas 4 a 5"

Escenario: No hay grupos creados
    Dado que no hay grupos creados
	Entonces veo una lista vacía