Feature: Using match keyword
  @wip
  Scenario: matching
    * def name = 'Robert Albert'
    * match name == 'Robert Albert'
    # Assert.assertEquals(name, "Robert Albert")
  * match name != 'Hans'

    Scenario: Fuzzy matching
      * def user =
      """
      {
  "name": "aFm",
  "email": "dev@krafttechexlab.com",
  "password": "123467",
  "about": "About Me",
  "terms": 10,
  "position": true
}
      """
      * match user.name == '#string'
      * match user.terms == '#number'
      * match user.position == '#boolean'
      * match user.country != '#notpresent'


      Scenario: Contains Matching
        Given def users =
              """
              [
              {"name" : "Arzu",
             "role" : "admin",
             "age" : 15
             },
             {"name" : "İnci",
             "role" : "member",
             "age" : 12
             }

              ]
              """
        * def length = users.length
        * print length
        * print users
        * match users contains {"name" : "Arzu","role" : "admin","age" : 15}



