Feature: Visitor views startups

  In order to learn which hiring startups will be at the event
  As a college student
  I want to see the startups and what they do

  Scenario: Student views startups
    Given I am on the home page
    Then I should see the following startups:
      | name           |
      | Acquia         |
      | Box.net        |
      | CampusLIVE     |
      | Digital Lumens |
      | Github         |
      | GroupMe        |
      | Heroku         |
      | Nimbit         |
      | Panjiva        |
      | Performable    |
      | SCVNGR         |
      | Swipely        |
      | uTest          |
      | Yottaa         |
    And I should see "Contact Jason if your company would like to attend."
