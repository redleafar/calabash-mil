Feature: Statistics 

  Scenario: Start up
    Then I click on screen 50% from the left and 50% from the top

  Scenario: As a user I can see my fill statistics
    Given I press "Statistics"
    Then I press "Average fuel economy"
    Then I see "Average fuel economy"
    Then I go back      
    And I wait 1 seconds
    Then I press "Worst fuel economy"
    Then I see "Worst fuel economy"
    Then I go back    
    And I wait 1 seconds
    Then I press "Best fuel economy"
    Then I see "Best fuel economy"
    Then I go back      
    And I wait 1 seconds
    Then I press "Average distance"
    Then I see "Average distance between fillups"
    Then I go back      
    And I wait 1 seconds
    Then I press "Minimum distance"
    Then I see "Minimum distance between fillups"
    Then I go back      
    And I wait 1 seconds
    Then I press "Maximum distance"
    Then I see "Maximum distance between fillups"
    Then I go back
    And I wait 1 seconds
    Then I press "Average cost"
    Then I see "Average cost per fillup"
    Then I go back      
    And I wait 1 seconds
    Then I press "Minimum cost"
    Then I see "Least expensive fillup"
    Then I go back      
    And I wait 1 seconds
    Then I press "Maximum cost"
    Then I see "Most expensive fillup"
    Then I go back      
    And I wait 1 seconds
    Then I press "Total cost"
    Then I see "Total amount spent on fuel"
    Then I go back      
    And I wait 1 seconds
    Then I press "Cost last month"
    Then I see "Money spent in the last month"
    Then I go back      
    And I wait 1 seconds
    Then I press "Cost last year"
    Then I see "Money spent in the last year"
    Then I go back      
    And I wait 1 seconds
    Then I press "Average price"
    Then I see "Average fuel price"
    Then I go back      
    And I wait 1 seconds
    Then I press "Minimum price"
    Then I see "Least expensive fuel"
    Then I go back      
    And I wait 1 seconds
    Then I press "Maximum price"
    Then I see "Most expensive fuel"    
    