Feature: Visitor views startups

  In order to learn which hiring startups will be at the event
  As a college student
  I want to see the startups and what they do

  Background:
    Given the following startups exist:
      | name    | description | url                |
      | GroupMe | Group chat  | http://groupme.com |
      | Heroku  | Deploy      | http://heroku.com  |

  Scenario: Student views startups
    When I go to the home page
    Then I should see the following startups:
      | name    | description | url                |
      | GroupMe | Group chat  | http://groupme.com |
      | Heroku  | Deploy      | http://heroku.com  |
    And I should see "Contact Jason if your company would like to attend."

  @akephalos @mobile
  Scenario: Visitor views talks on mobile phone
    When I go to the home page
    And I follow "Startups"
    And I follow "GroupMe"
    Then I should see "Group chat"
    And I should see "http://groupme.com"
    And I should not see "Deploy"
    And I should not see "http://heroku.com"
    When I go to the home page
    And I follow "Startups"
    And I follow "Heroku"
    Then I should see "Deploy"
    And I should see "http://heroku.com"
    And I should not see "Group chat"
    And I should not see "http://groupme.com"
