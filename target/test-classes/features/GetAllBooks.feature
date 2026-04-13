Feature:this is for get all books
  As a user of the FakeRestAPI
  I want to perform all CRUD operations on Books
  So that I can verify the complete Books API lifecycle


Scenario: to verify valid books get all books
  Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books'
  When method GET
  Then status 200
  
  
  Scenario:
    to verify invalid books get all books
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Book'
    When method GET
    Then status 404
    
    
    Scenario:
        to verify invalid endpoint get all books
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/Bookss'
        When method GET
        Then status 404
        
        Scenario:

