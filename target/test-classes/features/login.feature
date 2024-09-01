Feature: Demoblaze API Testing

  Background:
    * url baseURL
  

  Scenario: Login
    Given path 'login'
    And request { "username": "#(username)", "password": "#(password)" }
    When method post
    Then status 200
    * if (response.contains('errorMessage')) karate.fail('Unexpected error message found: ' + response.errorMessage)

  Scenario: Login (Wrong password)
    Given path 'login'
    And request { "username": "#(username)", "password": "#(randomPassword())" }
    When method post
    Then status 200
    And match response.errorMessage == 'Wrong password.'
    
  Scenario: Login (Non-existing user)
    Given path 'login'
    And request { "username": "#(randomUsername())", "password": "#(randomPassword())" }
    When method post
    Then status 200
    And match response.errorMessage == 'User does not exist.'
    