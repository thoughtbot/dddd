Feature: Visitor views startups

  In order to learn which hiring startups will be at the event
  As a college student
  I want to see the startups and what they do

  Scenario: Student views startups
    Given the following startups exist:
      | name           | description  |
      | Foursquare     | Check-ins    |
      | Github         | Social code  |
      | GroupMe        | Group chat   |
      | Heroku         | Deploy       |
      | Twitter        | Info network |
    And I am on the home page
    Then I should see the following startups:
      | name           | description  |
      | Foursquare     | Check-ins    |
      | Github         | Social code  |
      | GroupMe        | Group chat   |
      | Heroku         | Deploy       |
      | Twitter        | Info network |
    And I should see "Contact Jason if your company would like to attend."
