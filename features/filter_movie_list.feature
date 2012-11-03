Feature: display list of movies filtered by MPAA rating
 
  As a concerned parent
  So that I can quickly browse movies appropriate for my family
  I want to see movies matching only certain MPAA ratings

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And  I am on the RottenPotatoes home page
  
Scenario: restrict to movies with 'PG' or 'R' ratings
  When I check "ratings_PG"
  And I uncheck "ratings_PG-13"
  And I uncheck "ratings_R"
  And I uncheck "ratings_NC-17"
  And I check "ratings_G"
  And I press "ratings_submit"
  Then I should see movies table
  | Movie Title             | Rating | Release Date            | More Info                          |
  | Aladdin                 | G      | 1992-11-25 00:00:00 UTC | More about Aladdin                 |
  | 2001: A Space Odyssey   | G      | 1968-04-06 00:00:00 UTC | More about 2001: A Space Odyssey   |
  | The Incredibles         | PG     | 2004-11-05 00:00:00 UTC | More about The Incredibles         |
  | Raiders of the Lost Ark | PG     | 1981-06-12 00:00:00 UTC | More about Raiders of the Lost Ark |
  | Chicken Run             | G      | 2000-06-21 00:00:00 UTC | More about Chicken Run             |
  # enter step(s) to check the 'PG' and 'R' checkboxes
  #I should see movies of rating 'PG' or 'R'
  # enter step(s) to uncheck all other checkboxes
  # enter step to "submit" the search form on the homepage
  # enter step(s) to ensure that PG and R movies are visible
  # enter step(s) to ensure that other movies are not visible

Scenario: no ratings selected
  When I uncheck "ratings_PG"
  And I uncheck "ratings_PG-13"
  And I uncheck "ratings_R"
  And I uncheck "ratings_NC-17"
  And I uncheck "ratings_G"
  And I press "ratings_submit"
  Then I should see movies table
  | Movie Title             | Rating | Release Date            | More Info                          |
  | Aladdin                 | G      | 1992-11-25 00:00:00 UTC | More about Aladdin                 |
  | The Terminator          | R      | 1984-10-26 00:00:00 UTC | More about The Terminator          |
  | When Harry Met Sally    | R      | 1989-07-21 00:00:00 UTC | More about When Harry Met Sally    |
  | The Help                | PG-13  | 2011-08-10 00:00:00 UTC | More about The Help                |
  | Chocolat                | PG-13  | 2001-01-05 00:00:00 UTC | More about Chocolat                |
  | Amelie                  | R      | 2001-04-25 00:00:00 UTC | More about Amelie                  |
  | 2001: A Space Odyssey   | G      | 1968-04-06 00:00:00 UTC | More about 2001: A Space Odyssey   |
  | The Incredibles         | PG     | 2004-11-05 00:00:00 UTC | More about The Incredibles         |
  | Raiders of the Lost Ark | PG     | 1981-06-12 00:00:00 UTC | More about Raiders of the Lost Ark |
  | Chicken Run             | G      | 2000-06-21 00:00:00 UTC | More about Chicken Run             |

  # see assignment

Scenario: all ratings selected
  When I check "ratings_PG"
  And I check "ratings_PG-13"
  And I check "ratings_R"
  And I check "ratings_NC-17"
  And I check "ratings_G"
  And I press "ratings_submit"
  Then I should see movies table
  | Movie Title             | Rating | Release Date            | More Info                          |
  | Aladdin                 | G      | 1992-11-25 00:00:00 UTC | More about Aladdin                 |
  | The Terminator          | R      | 1984-10-26 00:00:00 UTC | More about The Terminator          |
  | When Harry Met Sally    | R      | 1989-07-21 00:00:00 UTC | More about When Harry Met Sally    |
  | The Help                | PG-13  | 2011-08-10 00:00:00 UTC | More about The Help                |
  | Chocolat                | PG-13  | 2001-01-05 00:00:00 UTC | More about Chocolat                |
  | Amelie                  | R      | 2001-04-25 00:00:00 UTC | More about Amelie                  |
  | 2001: A Space Odyssey   | G      | 1968-04-06 00:00:00 UTC | More about 2001: A Space Odyssey   |
  | The Incredibles         | PG     | 2004-11-05 00:00:00 UTC | More about The Incredibles         |
  | Raiders of the Lost Ark | PG     | 1981-06-12 00:00:00 UTC | More about Raiders of the Lost Ark |
  | Chicken Run             | G      | 2000-06-21 00:00:00 UTC | More about Chicken Run             |
  # see assignment
