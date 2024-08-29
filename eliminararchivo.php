<?php
// Archivo para manejar la eliminación de archivos en el servidor

$upload_dir = "uploads/"; // Directorio donde están los archivos

// Obtener el nombre del archivo desde la solicitud POST
$file_name = $_POST['file_name'];

// Construir la ruta completa al archivo
$file_path = $upload_dir . basename($file_name);

// Verificar si el archivo existe
if (file_exists($file_path)) {
    // Intentar eliminar el archivo
    if (unlink($file_path)) {
        // Respuesta en caso de éxito
        echo json_encode(["status" => "success", "message" => "Archivo eliminado con éxito."]);
    } else {
        // Respuesta en caso de error
        echo json_encode(["status" => "error", "message" => "No se pudo eliminar el archivo."]);
    }
} else {
    // Respuesta en caso de que el archivo no exista
    echo json_encode(["status" => "error", "message" => "Archivo no encontrado."]);
}

// Puedes agregar más lógica aquí si es necesario

?>
