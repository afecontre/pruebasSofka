Feature: Demoblaze API Testing

  Background:
    * url baseURL

  Scenario: Create new user
    Given path 'signup'
    And request { "username": "#(randomUsername())", "password": "#(randomPassword())" }
    When method post
   Then status 200  # Validar que se devuelve un código de estado 200 para la creación de usuario
    * def errorMessage = response.errorMessage
    * if (errorMessage) karate.fail('Error en la creación de usuario: ' + errorMessage)
    
    

  Scenario: Create user (Already exists)
    Given path 'signup'
    And request { "username": "#(username)", "password": "#(password)" }
    When method post
    Then status 200
    And match response.errorMessage == 'This user already exist.'

  