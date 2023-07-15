Feature: Put Status Control

  Background:
    * url 'https://petstore.swagger.io'
    * header  content-type = 'application/json'
    * def jsonPath = '../Json/'

  @User-password-update
  Scenario: User password update

    * def jsonBody = read(jsonPath + 'userinfo.json')
    * jsonBody.id = 132465798
    * jsonBody.username = 'fytest123'
    * jsonBody.firstName = 'furkan'
    * jsonBody.lastName = 'yıldırım'
    * jsonBody.email = 'ftest@test.com'
    * jsonBody.password = 'QAtest1'
    * jsonBody.phone = '0500000'
    * jsonBody.userStatus = '1'

    And path '/v2/user/fytest123'
    * request jsonBody
    When method PUT

    * status 200
    * print response

  @User-username-update
  Scenario: User username update

    * def jsonBody = read(jsonPath + 'userinfo.json')
    * jsonBody.id = 444
    * jsonBody.username = 'testest'
    * jsonBody.firstName = 'tester1'
    * jsonBody.lastName = 'automation'
    * jsonBody.email = 'mnl@test.com'
    * jsonBody.password = 'auto123'
    * jsonBody.phone = '01200001'
    * jsonBody.userStatus = '1'

    And path '/v2/user/testqa1'
    * request jsonBody
    When method PUT

    * status 200
    * print response
