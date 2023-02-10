
  Feature: Welcome to Karate
    Scenario: How to print
      Given print "Hello Karate World"
      When print 'another file print'
      * print 'my name is','Şüheda'
      * print 'my name is''Şüheda'
      * print 'my name is'+ 'Şüheda'


      Scenario: Variables  
        * def name = 'Asım'
        * print 'My name is', name
        * def age = 9
        * print name, 'is', age, 'years old'
        * print 5+5


        Scenario: Difficult parameters
          * def user = {"name" : "Arzu", "role" : "admin"}
          * print user
          * print user.name
          * print user.role

          Scenario: Json body
            * def users =
            """
            {"name" : "Arzu",
             "role" : "admin",
             "age" : 15
             }
            """
            * print user
            * print user.age
            
            Scenario: Json body with Array objects

              * print user
              * print user[0]
              * print user[0].name
              * print user[1].role
        