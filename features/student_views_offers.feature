Feature: Mobile user views offers

  In order to learn about other things of interest to me
  As a student at the event
  I want to view offers for me

  @akephalos @mobile
  Scenario: Student views offers on mobile phone
    When I go to the home page
    And I follow "Offers"
    Then I should see "Imagine Cup"
    And I should see "North-East College Hackathon"
