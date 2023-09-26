<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot</title>
    <link rel="stylesheet" href="All/style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="All/script.js"></script>
</head>

<body>

    <div class="wrapper">
        <div class="title">MADEBOT</div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>Hola, ¿cómo puedo ayudarte?</p>
                </div>
            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Escribe algo aquí.." required>
                <button id="send-btn">Enviar</button>
            </div>
                <button id="clear-btn">Vaciar</button>
        </div>
                        

    </div> 

    <script>
        // Manejar el clic en el botón "Eliminar Conversación"
        document.getElementById("clear-btn").addEventListener("click", function() {
            var chatbox = document.querySelector(".form");
            chatbox.innerHTML = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>Hola, ¿cómo puedo ayudarte?</p></div></div>';
        });
    </script>

</body>
</html>
