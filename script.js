// Efecto para index.html
function mostrarMensaje() {
    alert("¡Bienvenido a CineClub! 🎬 Disfruta de las mejores películas.");
}

// Efecto para detalle.html
function darMeGusta() {
    let boton = document.getElementById("btn-like");
    boton.style.backgroundColor = "#ffcc00"; // Cambia a amarillo
    boton.style.color = "#000";
    boton.innerText = "¡Te gusta! ❤️";
}
// Efecto para lista.html (Validar formulario)
function validarFormulario(event) {
    event.preventDefault(); // Evita que la página se recargue
    let titulo = document.getElementById("titulo").value;
    
    if (titulo === "") {
        alert("⚠️ Por favor, escribe el título de la película.");
    } else {
        alert("✅ ¡Gracias! Película sugerida: " + titulo);
        document.getElementById("titulo").value = ""; // Limpia el campo
    }
}

// Efecto extra: Buscador en la tabla
function filtrarTabla() {
    let input = document.getElementById("buscador");
    let filtro = input.value.toLowerCase();
    let filas = document.querySelectorAll("tbody tr");

    filas.forEach(fila => {
        let texto = fila.textContent.toLowerCase();
        if (texto.includes(filtro)) {
            fila.style.display = "";
        } else {
            fila.style.display = "none";
        }
    });
}
