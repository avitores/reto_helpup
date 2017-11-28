
# Álbum de fotos "Reto HelpUp"
Madrid 14 de Noviembre de 2017
Aplicación para almacenamiento de fotos en álbumes pertenecientes a usuarios registrados.
Aplicación RAILS
https://github.com/avitores/reto_helpup.git
https://retohelpup.herokuapp.com/

## Desarrollador:
Alfonso Vítores Alarcón
alfonso.vitores@gmail.com
https://www.linkedin.com/in/alfonso-vitores-08a50052/

## Entorno de desarrollo:
Aplicación en Ruby on Rails.
* Ruby (2.3.0).
* Rails 5 (5.0.0.1).
* Base de datos Postgres.

## Acceso como usuario. 
Registro, login...
* [Devise] - autentificación.

## Gestión de archivos. 
Archivos de imagen contenidas en los álbumes de fotos perteneciente a los usuarios.
* [Carrierwave] - para subida de imágenes.

## Web. 
* [Bootstrap4] - diseño y maquetación.
* [Will_paginate] - Paginación.
* [Lightbox2] - Visualización de imágenes.

## Proyecto
* [Heroku] Aplicación alojada en servidor gratuito. https://retohelpup.herokuapp.com/
* [Git] Control de versiones de desarrollo. 
* [GitHub] Publicación del código fuente del proyecto. https://github.com/avitores/reto_helpup.git

## Setup
Para instalación en local.
El proyecto puede ser ejecutado localmente mediante "Docker"
* Git clone https://github.com/avitores/reto_helpup.git
* Ejecutar sh reset.sh para crear la base de datos y construir el Docker, instalar dependencias (Postgres, rails 5.0...) 
* Ejecutar sh setup.sh para iniciar el Docker

## Aplicación Online
https://retohelpup.herokuapp.com/

## Ayuda aplicación
### Conectar:
Para iniciar sesión
Usuario: ejemplo@test.com
Password: secreta
### Registrarse:
Para registrarse como nuevo usuario.
(NO es necesaria validación por mail)
### Desconectar:
Cerrar la sesión
### Editar perfil:
Editar datos de usuario: Nombre, apellido, contraseña, avatar...
### Cancelar cuenta:
Eliminar el usuario y sus álbumes...
### Álbumes/fotos:
Muestra todos los álbumes públicos / privados (si se ha iniciado la sesión).
* Crear, Eliminar, Editar álbum 
* Hacer álbum público
* Añadir fotos al álbum
* Editar, Eliminar fotos del álbum
* Publicar fotos en redes sociales para usuarios registrados o álbumes públicos (facebook, twitter, linkedin)
* Enviar fotos por mail para usuarios registrados o álbumes públicos (Gmail, mail_to)
* Visualizar fotos (carrusel Livebox2)


