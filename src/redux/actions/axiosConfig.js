import axios from "axios";

// Configuración global de Axios para incluir el token CSRF
axios.defaults.xsrfCookieName = 'csrftoken';  // Nombre de la cookie donde se almacena el token CSRF
axios.defaults.xsrfHeaderName = 'X-CSRFToken';  // Nombre del header que Axios utilizará para enviar el token CSRF

export default axios;
