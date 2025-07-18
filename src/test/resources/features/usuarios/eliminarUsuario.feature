Feature: Eliminar usuario

Background:
  * url baseUrl
  * call read('../../helpers/GeneradorDatosUsuario.feature')
  * def body = nuevoUsuario
  * def response = call read('registrarUsuario.feature')
  * def userId = response.response._id

Scenario: Eliminar usuario existente
  Given path 'usuarios', userId
  When method DELETE
  Then status 200
  And match response.message == "Registro excluído com sucesso"

Scenario: Eliminar usuario inexistente
  Given path 'usuarios', 'id-invalido'
  When method DELETE
  Then status 200
  And match response.message == "Nenhum registro excluído"