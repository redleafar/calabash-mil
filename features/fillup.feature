Feature: Fill up and History

  Scenario: Start up
    Then I click on screen 50% from the left and 50% from the top

  Scenario: Press menu key    
    Then I press the menu key    

  Scenario: As a user I can fill the "fill up" form and save it
    Given I enter text "10" into field with id "price"
    Then I enter text "10" into field with id "volume"
    Then I enter text "100" into field with id "odometer"
    Then I enter text "New fillup" into field with id "NoResourceEntry-1"    
    Then I press "date"
    Given I set the date to 11-20-2019 on DatePicker with index "datePicker"
    Then I press "OK"
    Then I press "Save Fillup"    
    Then I press "11/20/19"
    Then I see "false"
    Then I see "10.00 Gallons"
    Then I see "100.00 mi"
    Then I see "$10"
    Then I see "$100.00"

  Scenario: As a user I can fill the "fill up" form with the parcial checkbox and save it
    Given I enter text "10" into field with id "price"
    Then I enter text "10" into field with id "volume"
    Then I enter text "100" into field with id "odometer"
    Then I enter text "New fillup" into field with id "NoResourceEntry-1"    
    Then I press "partial"
    Then I press "date"
    Given I set the date to 11-21-2019 on DatePicker with index "datePicker"
    Then I press "OK"
    Then I press "Save Fillup"    
    Then I press "11/21/19"
    Then I see "true"
    Then I see "10.00 Gallons"
    Then I see "100.00 mi"
    Then I see "$10"
    Then I see "$100.00"

  Scenario: As a user I can edit an existent "fill up"
    Given I press "History"
    Then I press "11/21/19"
    Then I press "Edit"
    Then I clear input field with id "price"
    Then I enter text "20" into field with id "price"
    Then I clear input field with id "volume"
    Then I enter text "20" into field with id "volume"
    Then I clear input field with id "odometer"
    Then I enter text "200" into field with id "odometer"
    Then I enter text "Edited fillup" into field with id "NoResourceEntry-1"    
    Then I press "partial"
    Then I press "date"
    Given I set the date to 11-22-2019 on DatePicker with index "datePicker"
    Then I press "OK"
    Then I press "Save changes" 
    And I wait 3 seconds
    Then I go back      
    And I wait 3 seconds  
    Then I press "11/22/19"
    Then I see "false"
    Then I see "20.00 Gallons"
    Then I see "200.00 mi"
    Then I see "$20"
    Then I see "$400.00"
    