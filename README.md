***Inscripciones App***
===
Repositorio para la edición comunitaria (software libre) de "Inscripciones" una app. para registrar las inscripciones a los cursos para los diferentes grupos de alumnos de una organización deportiva.

Es desarrollada con Ruby on Rails 4.2 y Ruby 2.2.0.

Toda contribución (sugerencias de cambio), consejo, critica constructiva, consultas son bienvenidas.

**Herramientas**.
  - Para BDD, se utiliza: **Cucumber**, **Capybara**.
  - Para la Integración Continua: **Travis-ci**
  - Para el deploy, el servicio de hosting: **Heroku**

**Servicios Externos.**
-----------------------
Novedades esta siendo integrado con servicios externos para mejorar la calidad de su código. A continuación puede ver una lista de ellos.

[![Build Status](https://travis-ci.org/matiasmasca/InscripcionesApp.svg)](https://travis-ci.org/matiasmasca/InscripcionesApp)

[![Heroku](https://heroku-badge.herokuapp.com/?app=terciar-inscripciones)](http://terciar-inscripciones.heroku.com)

Licencia:
[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)

**Notas Técnicas**
===========

* Ruby version:
    ruby 2.2

* Rails version:
    rails 4.2.1

* System dependencies:
    mirar el archivo gemfile

* Configuration:
    Para poder embeber la aplicación en otro sitio web, tenes que cambiar, en  config/application.rb la linea y poner el dominio que admitis:
        config.action_dispatch.default_headers = { 'X-Frame-Options' => 'ALLOW-FROM http://DOMINIO.com/' }

* Instalación para Dev:
    bundler install

* Database creation:
    rake db:migrate

* Database initialization:
    rake db:seed
    rake db:test:prepare

* How to run the test suite:
    cucumber
    cucumber --profile wip (para trabajar sobre algo en particular)
    rspec

* Services (job queues, cache servers, search engines, etc.):
    nada especial.

* Deployment instructions:
  - cambiar el token ejecutando: rake secret
  - Deberá crear las siguientes variables de entorno en su servidor:
    * COVERALL
    * DATABASE_NAME
    * DATABASE_USER
    * DATABASE_PASS
    * DATABASE_URL
    * EMAIL_HOST
    * EMAIL_USER_NAME
    * EMAIL_USER_PASS
    * HEROKU_POSTGRESQL_VIOLET_URL
    * SECRET_KEY_BASE para el secret token

  - cambiar los .yml de Travis y de Coveralls.

  ¿Cómo contribuir?
  ============
  Necesitarás saber manejar git, si aun no lo conoces: http://bit.ly/probargit
    1. Hace una copia del repositorio (Fork it). Una guía en https://help.github.com/articles/fork-a-repo/
    2. Crea una nueva rama  (git checkout -b MiAporte)
    3. Hacer los cambios que creas necesarios, que agreguen valor a la aplicación.
    4. Agregar las pruebas que pasen para tus cambios.
    5. Comprometer tus cambios (git commit -am 'Mensaje de que cambias')
    6. Enviar tu rama cons sus cambios (git push origin MiAporte)
    7. Ver si pasa el build en Travis: https://travis-ci.org/matiasmasca/InscripcionesApp
    8. Se crea un nuevo Pull Request que debe ser aprobado.

  Contributing
  ============

    1. Fork it
    2. Create your feature branch (`git checkout -b my-new-feature`)
    3. Commit your changes (`git commit -am 'Add some feature'`)
    4. Push to the branch (`git push origin my-new-feature`)
    5. Create new Pull Request

    e=======

    Copyright (c) 2015  Matias Mascazzini

    MIT License [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

    Copyright (c) 2015  Matias Mascazzini
    
    Se concede permiso por la presente, de forma gratuita, a cualquier persona que obtenga una copia de este software y de los archivos de documentación asociados (el "Software"), para utilizar el Software sin restricción, incluyendo sin limitación los derechos de usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar, y/o vender copias de este Software, y para permitir a las personas a las que se les proporcione el Software a hacer lo mismo, sujeto a las siguientes condiciones:

    El aviso de copyright anterior y este aviso de permiso se incluirán en todas las copias o partes sustanciales del Software.

    EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A GARANTÍAS DE COMERCIALIZACIÓN, IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DEL COPYRIGHT SERÁN RESPONSABLES DE NINGUNA RECLAMACIÓN, DAÑOS U OTRAS RESPONSABILIDADES, YA SEA EN UN LITIGIO, AGRAVIO O DE OTRO MODO, QUE SURJA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U OTRO TIPO DE ACCIONES EN EL SOFTWARE.