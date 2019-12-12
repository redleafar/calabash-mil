Feature: Vehicles 

  Scenario: Start up
    Then I click on screen 50% from the left and 50% from the top

  Scenario: As a user I can see my vehicles info
    Given I press "Vehicles"
    Then I see "Default vehicle"
    