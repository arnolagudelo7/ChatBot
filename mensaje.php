<?php
// Conectando a la base de datos
$conn = mysqli_connect("localhost", "root", "", "bot") or die("Database Error");

// Obteniendo el mensaje del usuario a través de AJAX
$getMesg = $_POST['text'];

// Utilizar consultas parametrizadas para evitar inyección SQL
$check_data = "SELECT palabra_clave, respuesta FROM chatbot_respuestas WHERE ? LIKE CONCAT('%', palabra_clave, '%')";
$stmt = mysqli_prepare($conn, $check_data);
mysqli_stmt_bind_param($stmt, "s", $getMesg);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

// Arreglo para almacenar respuestas
$respuestas = array();

// Buscando coincidencias con palabras clave
while ($row = mysqli_fetch_assoc($result)) {
    $respuestas[] = $row['respuesta'];
}

// Si se encontraron respuestas, seleccionamos una al azar
if (!empty($respuestas)) {
    $respuesta = $respuestas[array_rand($respuestas)];
    echo $respuesta;
} else {
    echo "¡Lo siento, no puedo ayudarte con este inconveniente! Favor comunícate con el administrador en el siguiente enlace: <br><a href='https://www.configuroweb.com/contacto/'>Contacto</a>";
}

// Cerrar la conexión a la base de datos
mysqli_stmt_close($stmt);
mysqli_close($conn);
?>
