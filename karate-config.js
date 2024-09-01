function() {
  var config = {};
  config.baseURL = 'https://api.demoblaze.com';
  
  // Función para generar un nombre de usuario aleatorio
  config.randomUsername = function() {
    return 'user_' + Math.random().toString(36).substring(7);
  };
  
  // Función para generar una contraseña aleatoria
  config.randomPassword = function() {
    return 'pass_' + Math.random().toString(36).substring(7);
  };
  
  return config;
}
