# language: es
Característica: Indentificacion profesores
    Como un administrador de la escuela
    Para poder ver los alumnos de mis grupos
    Deseo identificarme en la aplicación de la escuela

Escenario: inicio exitoso.
  Dado que soy administador registrado
  Y me identifico como "admin@club.com"
  Entonces veo un mensaje "Bienvenido Sr. Pepito Argento"

Escenario: inicio fallido.
  Dado que soy administador registrado
  Y completo mi email "admin@club.com" y contraseña "adminadmin"
  Entonces veo un mensaje "Correo o contraseña inválidos."