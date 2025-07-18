Feature: Listar usuarios

Background:
  * url baseUrl

Scenario: Obtener lista de todos los usuarios
  Given path 'usuarios'
  When method GET
  Then status 200
  And match response.usuarios contains only deep { nome: '#string', email: '#string', _id: '#string' }