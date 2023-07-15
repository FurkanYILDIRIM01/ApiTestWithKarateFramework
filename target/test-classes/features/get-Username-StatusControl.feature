Feature: Get Status Control

  Background:
    * url 'https://petstore.swagger.io'
    * header content-type = 'application/json'
  
  @get-failed-username
  Scenario:Not Get Username
    And path '/v2/user/abcdefg'
    When method GET
    
    * status 404
    * assert response.type == 'error'


  @get-success-username
  Scenario: Get Username
    And path '/v2/user/fytest123'
    When method GET

    * status 200
    * print response

  @get-success-username2
  Scenario: Get Username2
    And path '/v2/user/testest'
    When method GET

    * status 200
    * print response
