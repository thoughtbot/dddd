Feature: As a student, I want to register for D4

  In order to learn about kick-ass technologies
  As a college student
  I want to register for D4

  Scenario: Student registers for D4
    Given I am on the home page
    When I fill in "Twitter Name" with "Croaky"
    And I fill in "Full Name" with "Dan Croak"
    And I fill in "School" with "Nobles"
    And I fill in "In 140 characters or less, describe why you're attending" with "I'm a special snowflake."
    And I choose the "Developer" role
    And I press "Register"
    Then I should see "Thanks for registering! We can't wait to see you!"
