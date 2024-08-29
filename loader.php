<?php
// Archivo para manejar la carga inicial de la aplicación o recursos

// Aquí puedes cargar configuraciones o recursos necesarios al iniciar la aplicación
// Por ejemplo, cargar la configuración de la base de datos
include_once "global/basemysql.php";

// Puedes agregar más inicializaciones o cargas aquí

// Respuesta de éxito para indicar que la carga se completó
echo json_encode(["status" => "success", "message" => "Carga inicial completada."]);

?>
