Feature: Generador de datos de usuario aleatorios

Background:
  * def uuid = function() { return java.util.UUID.randomUUID() + '' }

Scenario: Generar usuario válido
  * def nombre = 'Usuario ' + uuid()
  * def email = 'usuario' + uuid().substring(0, 5) + '@mail.com'
  * def password = '123456'
  * def admin = 'true'
  * def nuevoUsuario =
    """
    {
      "nome": "#(nombre)",
      "email": "#(email)",
      "password": "#(password)",
      "administrador": "#(admin)"
    }
    """