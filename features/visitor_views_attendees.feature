Feature: Visitor views attendees

  In order to learn which attendees will be at the event
  As a student
  I want to see the other students, what they do, and what school they attend

  Scenario: Visitor views attendees
    Given the following registrations exist:
      | name         | school name  | role      | twitter  |
      | Dan Croak    | Holy Cross   | Developer | Croaky   |
      | Chad Mazzola | WPI          | Designer  | ubuwaits |
      | Mike Burns   | Northeastern | Developer |          |
    And I am on the home page
    Then I should see "Croaky"'s "48"px Twitter avatar and link
    And I should see "ubuwaits"'s "48"px Twitter avatar and link
    And I should see "Dan Croak" and "Holy Cross" in the developer attendee section
    And I should see "Chad Mazzola" and "WPI" in the designer attendee section
    And I should see "Mike Burns" and "Northeastern" in the developer attendee section
    And I should see "3 high school and college students"
