Feature:this feature file contains the scenarios for retrieving a book by its ID using the GET /api/v1/Books/{id} endpoint of the FakeRestAPI

  Scenario: to verify that a book can be retrieved successfully by its ID and the response contains the expected fields and values
    * def randomId = Math.floor(Math.random() * 1000) + 1
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books/' + randomId
    When method get
    Then status 200
    And match response.id == randomId
    And match response.title == '#string'
    And match response.description == '#string'
    And match response.pageCount == '#number'
    And match response.excerpt == '#string'
    And match response.publishDate == '#string'