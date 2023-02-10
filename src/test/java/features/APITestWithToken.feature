Feature: API Tests
  Background:
#    * def baseUrl = 'https://www.krafttechexlab.com/sw/api/v1/allusers'

    * def AuthFeature = call read('classpath:features/PostNewUser.feature')
      #yukarıda o sınıftaki methodları çalıştırarak alıyor o yüzden 1 kere çalıştırdıksak değerleri değiştirip yenisini almak lazım
    * def UserToken = AuthFeature.token
    * print "Token comes from Background" , UserToken

  Scenario: add experience
    Given url  'https://www.krafttechexlab.com/sw/api/v1/experience/add'
    And header Authorization = UserToken
    And header Accept = 'application/json; charset=UTF-8'
    * request
      """
      {
  "job": "QA",
  "company": "Kraft Techs",
  "location": "UK",
  "fromdate": "2012-12-12",
  "todate": "2016-12-12",
  "current": "false",
  "description": "Great job"
}
      """

    When method POST
    Then status 200
    * print response

    Given  url "https://www.krafttechexlab.com/sw/api/v1/experience/all"
    And header Authorization = UserToken
    And header Accept = 'application/json; charset=UTF-8'
    When method GET
    Then status 200
    * print response

    * def expectedInfo = read('classpath:data/userInfo.json')
   # Then match response == expectedInfo
  * match response.experience.company == "Kraft Techs"


