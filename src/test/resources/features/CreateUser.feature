Feature: this feature file contains the scenarios for creating a user using the POST /api/v1/Users endpoint of the FakeRestAPI

  Scenario:
to verify that a user can be created successfully with valid input data and the response contains the expected fields and values
    * def randomId = Math.floor(Math.random() * 1000) + 1
   * def randomTitle = 'Book-' + randomId
  * def randomDescription = 'book description ' + randomId
    * def randomExcerpt = ' This is a sample book. ' + randomId
    * def randomPageCount = Math.floor(Math.random() * 500) + 1
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books'
    And header Content-Type = 'application/json'
    And request
      """
      {
        "id": #(randomId),
        "title": "#(randomTitle)",
        "description": "#(randomDescription)",
        "pageCount": #(randomPageCount),
        "excerpt": "#(randomExcerpt)",
        "publishDate": "2026-04-13T16:55:41.856Z"
      }

      """
    When method post
    Then status 200
   * def jsonId = response.id 
   * return { jsonId : jsonId }
    And match response.id == randomId
    And match response.title == randomTitle
