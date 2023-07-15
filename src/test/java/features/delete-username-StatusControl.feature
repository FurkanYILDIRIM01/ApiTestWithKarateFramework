Feature: Post Status Control

  Background:
    * url 'https://petstore.swagger.io'
    * header  content-type = 'application/json'
    * def jsonPath = '../Json/'

  @delete-username
  Scenario: Delete Username
    And path '/v2/user/fytest123'
    When method DELETE

    * status 200
    * print response

  @delete-username2
  Scenario: Delete Username2
    And path '/v2/user/testest'
    When method DELETE

    * status 404
    * print response

  @delete-username3
  Scenario: Delete Username3
    And path '/v2/user/testqa1'
    When method DELETE

    * status 404
    * print response
