# language: es
Característica: Indentificacion profesores
    Como un profesor de la escuela
    Para poder ver los alumnos de mis grupos
    Deseo identificarme en la aplicación de la escuela

Antecedentes:
  Dado que soy profesor registrado
  Y me identifico como "profjirafales@elchavo.com"

Escenario: usuario habilitado.
    Y que el usuario esta "habilitado"
    Entonces veo un mensaje "Bienvenido Rubén Aguirre Jirafales"

Escenario: usuario deshabilitado.
    Y que el usuario esta "deshabilitado"
    Entonces veo un mensaje que dice "Su usuario ha sido deshabilitado, por favor comuniquese con el admistrador (contacto@terciar.info)."
