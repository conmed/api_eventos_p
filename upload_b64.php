<?php
// Archivo para manejar la subida de imágenes codificadas en base64

// Directorio donde se guardarán las imágenes
$upload_dir = "uploads/"; // Asegúrate de que esta carpeta tenga permisos de escritura

// Obtener los datos de la imagen en base64 desde la solicitud POST
$image_data = $_POST['image'];

// Decodificar la imagen desde base64
$image = base64_decode($image_data);

// Generar un nombre de archivo único
$file_name = uniqid() . '.png';

// Ruta completa al archivo
$file_path = $upload_dir . $file_name;

// Guardar la imagen en el servidor
if (file_put_contents($file_path, $image)) {
    // Respuesta en caso de éxito
    echo json_encode(["status" => "success", "file_path" => $file_path]);
} else {
    // Respuesta en caso de error
    echo json_encode(["status" => "error", "message" => "No se pudo guardar la imagen."]);
}

// Puedes agregar más validaciones y lógica aquí, por ejemplo, para verificar el tipo de archivo, tamaño, etc.

?>
