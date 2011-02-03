Feature: Mobile user views opportunities

  In order to learn about other things of interest to me
  As a student at the event
  I want to view other events for me

  @akephalos @mobile
  Scenario: Student views opportunities on mobile phone
    When I go to the home page
    And I follow "Opportunities"
    Then I should see "Boston Javascript Group"
    And I should see "Boston Ruby Group"
    And I should see "Code for America"
    And I should see "DevOps Day"
    And I should see "Imagine Cup"
    And I should see "Mobile Camp"
    And I should see "North-East College Hackathon"
    And I should see "Ruby on Rails Workshops"
    And I should see "Summer at Highland Capital"
