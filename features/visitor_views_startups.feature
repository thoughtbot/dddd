Feature: Visitor views startups

  In order to learn which hiring startups will be at the event
  As a college student
  I want to see the startups and what they do

  Scenario: Student views startups
    Given I am on the home page
    And I should see "Github"
    And I should see "GroupMe"
    And I should see "Heroku"
    And I should see "Panjiva"
    And I should see "Performable"
    And I should see "Swipely"
    And I should see "Contact Jason if your company would like to attend."
