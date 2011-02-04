Feature: A Bostonian parties

  In order to meet and mentor students
  As a Bostonian in the web community
  I want to attend the D8 after-party

  Scenario: Bostonian RSVPs for after-party
    Given I am on the after-party page
    When I fill in "Full Name" with "Dan Croak"
    And I fill in "Twitter Name" with "Croaky"
    And I fill in "About" with "Developer at thoughtbot"
    And I fill in "URL" with "http://thoughtbot.com"
    And I press "RSVP"
    Then I should see "It's only a party if you make it a party. See you there!"

  Scenario: Bostonian does not fill in fields on after-party form
    Given I am on the after-party page
    And I press "RSVP"
    Then I should see "can't be blank" on text inputs of the party form
