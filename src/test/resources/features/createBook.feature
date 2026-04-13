Feature:this feature file is for create book
  As a user of the FakeRestAPI
  I want to perform all CRUD operations on Books
  So 
  that I can verify the complete Books API lifecycle
  
  Scenario:to verify valid book creation
  
* def randomId = Math.floor(Math.random() * 1000) + 1
* def randomTitle= ("Book-" + randomId)
* def randomDescription = 'book description ' + randomId
* def randomExcerpt = 'This is a sample book. ' + randomId
* def randomPageCount = Math.floor(Math.random() * 500) + 1

Given url 'https://fakerestapi.azurewebsites.net/api/v1/Books'
And header Content-Type = 'application/json'
And request

 """
  { "id": #(randomId),
   "title": "#(randomTitle)", 
    "description": "#(randomDescription)",
    "pageCount": "#(randomPageCount)",
    "excerpt": "#(randomExcerpt)",
    "publishDate": "2024-06-01T00:00:00Z"



}
"""
When method post
Then status 200

* def jsonResponse = response
* karate.log('Response:', jsonResponse)
* match response.id == randomId
* match jsonResponse.title == randomTitle
* match jsonResponse.description == randomDescription
* match jsonResponse.pageCount == randomPageCount
* match jsonResponse.excerpt == randomExcerpt
* match jsonResponse.publishDate == '2024-06-01T00:00:00Z'
