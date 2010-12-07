Feature: Visitor views startups

  In order to learn which hiring startups will be at the event
  As a college student
  I want to see the startups and what they do

  Scenario: Student views startups
    Given I am on the home page
    Then I should see "Performable"'s name, avatar, and details
