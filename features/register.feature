Feature: As a student, I want to register for D4

  In order to learn about kick-ass technologies
  As a college student
  I want to register for D4

  Scenario: Student registers for D4
    Given I am on the home page
    When I fill in "Twitter Name" with "Croaky"
    And I fill in "Full Name" with "Dan Croak"
    And I fill in "School" with "Harvard University"
    And I fill in "Why" with "Because I'm a special snowflake."
    And I press "Developer"
    And I press "Submit"
    Then I should see "Thanks for registering! We can't wait to see you!"
