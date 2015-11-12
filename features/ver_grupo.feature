# language: es
Característica: Ver Grupo
    Como Administrador
    Quiero acceder a un grupo
    Para ver qué es lo que se creo o edito y cambiarlo si hace falta

Antecedentes:
    Dado que estoy identificado como "Administrador"
    Y que existe un grupo llamado "Varones 2015"
    Y me encuentro en la pantalla "ver todos los grupos"
    Y que hice click en el botón "Mostrar"

Escenario: veo el detalle de un grupo
    Entonces veo el texto "Nombre del grupo: Varones 2015"
    Y veo el texto "Año: 2015"
    Y veo el texto "Sexo: Varones"
    Y veo el texto "Cupo: 20"
    Y veo el texto "Cupo extra: 5"
    Y veo el texto "Edad: desde 4 años hasta 5 años."
