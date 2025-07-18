Feature: Buscar usuario por ID

Background:
  * url baseUrl
  * call read('../../helpers/GeneradorDatosUsuario.feature')
  * def body = nuevoUsuario
  * def response = call read('registrarUsuario.feature')
  * def userId = response.response._id

Scenario: Buscar usuario existente
  Given path 'usuarios', userId
  When method GET
  Then status 200
  And match response.nome == body.nome
  And match response.email == body.email

Scenario: Buscar usuario inexistente
  Given path 'usuarios', 'id-invalido'
  When method GET
  Then status 400
  And match response.message == "Usuário não encontrado"