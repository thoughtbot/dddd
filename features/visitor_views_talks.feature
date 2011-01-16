Feature: Visitor views talks

  In order to learn more about each talk
  As a college student
  I want to see the talk abstract, the speaker bio, and resources

  Scenario: Student views talks
    Given the following talks exist:
      | name   | speaker name       | speaker bio  | abstract                        |
      | Git    | Tom Preston-Werner | Github dude. | Version control is your friend. |
      | jQuery | John Resig         | jQuery dude. | CSS selectors are your friends. |
    And the following resources exist:
      | name   | url               | description | talk         |
      | Github | http://github.com | Bad-ass.    | name: Git    |
      | jQuery | http://jquery.com | Bad-ass.    | name: jQuery |
    And I am on the what page
    Then I should see the following talks:
      | name   |
      | Git    |
      | jQuery |
