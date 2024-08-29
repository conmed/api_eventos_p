<?php
// Archivo para gestionar la conexión a la base de datos

$host = "YOUR_HOST_HERE"; // Reemplazar con la dirección de tu servidor de base de datos
$username = "YOUR_USERNAME_HERE"; // Reemplazar con tu nombre de usuario de la base de datos
$password = "YOUR_PASSWORD_HERE"; // Reemplazar con tu contraseña de la base de datos
$dbname = "YOUR_DATABASE_NAME_HERE"; // Reemplazar con el nombre de tu base de datos

// Crear conexión a la base de datos
$conn = new mysqli($host, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Puedes agregar más lógica para manejar la base de datos aquí

?>
