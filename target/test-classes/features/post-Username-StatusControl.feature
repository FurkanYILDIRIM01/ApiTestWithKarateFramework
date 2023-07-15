Feature: Post Status Control

  Background:
    * url 'https://petstore.swagger.io'
    * header  content-type = 'application/json'
    * def jsonPath = '../Json/'

  @Create-User
  Scenario: Create User

    * def jsonBody = read(jsonPath + 'userinfo.json')
    * jsonBody.id = 132465798
    * jsonBody.username = 'fytest123'
    * jsonBody.firstName = 'furkan'
    * jsonBody.lastName = 'yıldırım'
    * jsonBody.email = 'ftest@test.com'
    * jsonBody.password = 'fy123'
    * jsonBody.phone = '0500000'
    * jsonBody.userStatus = '1'

    And path '/v2/user'
    * request jsonBody
    When method POST

    * status 200
    * print response


  @Create-User2
  Scenario: Create User2

    * def jsonBody = read(jsonPath + 'userinfo.json')
    * jsonBody.id = 444
    * jsonBody.username = 'testest'
    * jsonBody.firstName = 'tester1'
    * jsonBody.lastName = 'automation'
    * jsonBody.email = 'mnl@test.com'
    * jsonBody.password = 'auto123'
    * jsonBody.phone = '01200001'
    * jsonBody.userStatus = '1'

    And path '/v2/user'
    * request jsonBody
    When method POST

    * status 200
    * print response




