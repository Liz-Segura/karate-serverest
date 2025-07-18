Feature: Registrar usuario

Background:
  * url baseUrl
  * call read('../../helpers/GeneradorDatosUsuario.feature') 
  * def body = nuevoUsuario

Scenario: Registrar nuevo usuario exitosamente
  Given path 'usuarios'
  And request body
  When method POST
  Then status 201
  And match response.message == "Cadastro realizado com sucesso"
  And match response._id == '#string'

Scenario: No registrar usuario con email ya existente
  Given path 'usuarios'
  And request body
  When method POST
  Then status 400
  And match response.message == "Este email já está sendo usado"