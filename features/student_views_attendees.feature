Feature: Visitor views attendees

  In order to learn which attendees will be at the event
  As a student
  I want to see the other students, what they do, and what school they attend

  Background:
    Given the following registrations exist:
      | name         | school name  | role      | twitter  |
      | Dan Croak    | Holy Cross   | Developer | Croaky   |
      | Chad Mazzola | WPI          | Designer  | ubuwaits |
      | Mike Burns   | Northeastern | Developer |          |

  Scenario: Visitor views attendees
    When I go to the home page
    Then I should see "Croaky"'s "48"px Twitter avatar and link
    And I should see "ubuwaits"'s "48"px Twitter avatar and link
    And I should see "Dan Croak" and "Holy Cross" in the developer attendee section
    And I should see "Chad Mazzola" and "WPI" in the designer attendee section
    And I should see "Mike Burns" and "Northeastern" in the developer attendee section
    And I should see "3 high school and college students"

  @akephalos @mobile
  Scenario: Visitor views attendees on mobile phone
    When I go to the home page
    And I follow "Students"
    And I follow "Developers"
    Then I should see "Dan Croak"
    And I should see "Mike Burns"
    And I should not see "Chad Mazzola"
    When I go to the home page
    And I follow "Students"
    And I follow "Designers"
    Then I should see "Chad Mazzola"
    And I should not see "Dan Croak"
    And I should not see "Mike Burns"
