Feature: Visitor views talks

  In order to learn more about each talk
  As a college student
  I want to see the talk abstract, the speaker bio, and resources

  Background:
    Given the following talks exist:
      | name   | speaker name       | speaker bio  | abstract                        |
      | Git    | Tom Preston-Werner | Github dude. | Version control is your friend. |
      | jQuery | John Resig         | jQuery dude. | CSS selectors are your friends. |
    And the following resources exist:
      | name   | url               | description | talk         |
      | Github | http://github.com | Bad-ass.    | name: Git    |
      | jQuery | http://jquery.com | Sweet.      | name: jQuery |

  Scenario: Visitor views talks
    When I go to the talks page
    Then I should see the following talks:
      | name   |
      | Git    |
      | jQuery |

  @akephalos @mobile
  Scenario: Visitor views talks on mobile phone
    When I go to the home page
    And I follow "Talks"
    And I follow "Git"
    Then I should see the "Git" talk
    And I should not see the "jQuery" talk
    When I go to the home page
    And I follow "Talks"
    And I follow "jQuery"
    Then I should see the "jQuery" talk
    And I should not see the "Git" talk
