Feature: search for books by author
 
  As a book lover
  So that I can find books with my favorite author
  I want to include and search on author information in books I enter
 
Background: books in database
 
  Given the following books exist:
  | title                 | genre           | author       | publish_date |
  | It                    | Horror          | Stephen King |   1986-09-15 |
  | The Martian           | Fiction         | Andy Weir    |   2014-02-11 |
  | To Kill a Mockingbird | Drama           |              |   1960-07-11 |
  | Carrie                | Horror          | Stephen King |   1974-04-05 |
 
Scenario: add author to existing book
  When I go to the edit page for "To Kill a Mockingbird"
  And  I fill in "Author" with "Harper Lee"
  And  I press "Update Book Info"
  Then the author of "To Kill a Mockingbird" should be "Harper Lee"
 
Scenario: find book with same author
  Given I am on the details page for "It"
  When  I follow "Find Books With Same Author"
  Then  I should be on the Similar Books page for "It"
  And   I should see "Carrie"
  But   I should not see "The Martian"
 
Scenario: can't find similar books if we don't know author (sad path)
  Given I am on the details page for "To Kill a Mockingbird"
  Then  I should not see "Harper Lee"
  When  I follow "Find Books With Same Author"
  Then  I should be on the home page
  And   I should see "'To Kill a Mockingbird' has no author info"