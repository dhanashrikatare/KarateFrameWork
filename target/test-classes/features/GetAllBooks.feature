Feature: this is for get all books
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
to verify that using wrong http method to get all books record returns the expected status code and error message

    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books'
    When method POST
    Then status 405
