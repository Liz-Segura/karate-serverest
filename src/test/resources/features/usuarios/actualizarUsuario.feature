Feature: Actualizar usuario

Background:
  * url baseUrl
  * call read('../../helpers/GeneradorDatosUsuario.feature')
  * def body = nuevoUsuario
  * def response = call read('registrarUsuario.feature')
  * def userId = response.response._id

Scenario: Actualizar nombre del usuario
  Given path 'usuarios', userId
  And request { nome: 'Nombre Actualizado' }
  When method PUT
  Then status 200
  And match response.message == "Registro alterado com sucesso"
🗑️ eliminarUsuario.feature