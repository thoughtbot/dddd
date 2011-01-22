Feature: As a student, I want to register for D8

  In order to learn about kick-ass technologies
  As a college student
  I want to register for D8

  Scenario: Aspiring attendees discover registration is closed
    Given I am on the home page
    Then I should see "Registration is now closed."
    And I should not see the registration form

  # Scenario: Student registers for D4
  #   Given I am on the home page
  #   When I fill in "Twitter Name" with "Croaky"
  #   And I fill in "Full Name" with "Dan Croak"
  #   And I fill in "School" with "Nobles"
  #   And I choose the "Developer" role
  #   And I press "Register"
  #   Then I should see "Thanks for registering! We can't wait to see you!"

  # Scenario: Student does not fill in all fields on register form
  #   Given I am on the home page
  #   And I press "Register"
  #   Then I should see "can't be blank" on text inputs of the registration form
