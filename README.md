# API de Eventos - Integración API - APP Android

Este repositorio contiene los archivos necesarios para integrar una API de eventos con una aplicación desarrollada en Android. La API permite la gestión de eventos, recursos, y la subida de imágenes codificadas en base64, entre otras funcionalidades.

## Tabla de Contenido

- [Instalación](#instalación)
- [Estructura del Proyecto](#estructura)
- [Configuración](#configuración)
- [Uso](#uso)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

## Instalación

### Requisitos Previos

- Servidor web (Apache, Nginx, etc.)
- PHP 7.4 o superior
- MySQL 5.7 o superior
- Git
- Composer (opcional, si se usan dependencias de PHP)

### Pasos de Instalación

1. Clona el repositorio desde GitHub:

    ```sh
    git clone https://github.com/tuusuario/tu-repositorio.git
    cd tu-repositorio
    ```

2. Configura tu base de datos MySQL. Crea una base de datos y un usuario para el proyecto. Importa el esquema de la base de datos si está disponible (por ejemplo, `database.sql`).

3. Configura la conexión a la base de datos en `basemysql.php`:

    ```php
    class BaseMysql{
        static public function conexion(){
            try {
                $dsn = "mysql:host=localhost;dbname=nombre_de_tu_base_de_datos;port=3306;charset=UTF8";
                $usuario = "tu_usuario";
                $password = "tu_contraseña";
                $opt = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
                $bd = new PDO($dsn,$usuario,$password,$opt);
                return $bd;
            } catch (PDOException $error) {
                echo "<h2>No me pude conectar con la Base de Datos...<br></h2>".$error->getMessage();
                exit;
            }
        }
    }
    ```

4. Instala las dependencias de Composer (si aplica):

    ```sh
    composer install
    ```

5. Configura tu servidor web para servir la aplicación.

## Estructura del Proyecto

### Archivos en la raíz:
- **c0n3c7_example.php:** Archivo de ejemplo para la configuración de la clave secreta y conexión a la API. Debes copiar este archivo, renombrarlo a `c0n3c7.php`, y rellenar los valores con tus propios datos.
- **eliminararchivo.php:** Script para eliminar archivos en el servidor.
- **loader.php:** Script que maneja la carga inicial de configuraciones y recursos necesarios al iniciar la aplicación.
- **upload_b64.php:** Script que permite la subida de imágenes codificadas en base64 al servidor.
- **BBDD_event_eventos1.sql:** Archivo SQL que contiene la estructura de la base de datos necesaria para este proyecto.

### Carpeta `global`:
- **basemysql.php:** Archivo para la conexión a la base de datos. **No se incluye en el repositorio público.** Debes copiar `basemysql_example.php`, renombrarlo a `basemysql.php`, y rellenar los valores con tus credenciales y detalles específicos.
- **basemysql_example.php:** Archivo de ejemplo para la configuración de la conexión a la base de datos.
- **Consulta.php:** Contiene funciones para realizar consultas SQL a la base de datos.
- **Recursos.php:** Maneja los recursos dentro de la aplicación.
- **ValidarRecurso.php:** Contiene funciones para validar recursos en la base de datos.

## Configuración

### 1. Configuración de la Base de Datos:

- Utiliza el archivo `BBDD_event_eventos1.sql` para crear la estructura de la base de datos. Puedes hacerlo ejecutando el siguiente comando en tu terminal o cliente de MySQL:

```bash
mysql -u YOUR_USERNAME -p YOUR_DATABASE_NAME < BBDD_event_eventos1.sql.
```
- Reemplaza YOUR_USERNAME con tu nombre de usuario de MySQL y YOUR_DATABASE_NAME con el nombre de la base de datos que deseas crear.
- Verifica que todas las tablas necesarias se hayan creado correctamente en tu base de datos.

### 2. Configura la conexión a la base de datos:
- Copia el archivo `global/basemysql_example.php` y renómbralo a basemysql.php.
- Abre `basemysql.php` y rellena los valores con tus credenciales y detalles específicos de la base de datos.

### 3. Configura la conexión y clave de API:
- Copia el archivo `c0n3c7_example.php` en la raíz del proyecto y renómbralo a `c0n3c7.php`.
- Abre `c0n3c7.php` y reemplaza los valores de las variables con tu clave secreta y otros datos necesarios.

### 4. Permisos en el servidor:
- Asegúrate de que las carpetas `uploads/` y otras necesarias tengan los permisos adecuados para permitir la subida y eliminación de archivos.

## Uso
Puedes utilizar estos archivos para integrar funcionalidades de eventos en tu aplicación. Cada archivo tiene su propia función específica, por lo que es importante que sigas las instrucciones de configuración antes de usarlos.

## Contribuciones
Si deseas contribuir a este proyecto, por favor, abre un issue o realiza un pull request.

## Licencia
Este proyecto está bajo la [MIT License](LICENSE). Puedes ver más detalles en el archivo LICENSE.
