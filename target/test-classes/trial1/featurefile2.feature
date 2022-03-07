 Feature: Statefarm 
Background: opening browser and statefarm page
 Given I open the browser and open the statefarm main page
 
  @Test1
  Scenario: Taking the wrong zipcodes 
    When I am on the statefarm main page
    And I click on the dropdown option and select any option
    And I enter the wrong zipcode 
    And I click on the quote button
    Then  I validate i am on the next page or on the same page through error message and assert the message
  
    
    @Test2
  Scenario Outline: Taking different zipcodes
   When I am on the statefarm main page
    And I click on the dropdown option and select any option
    And I enter the zipcode as <zipcode>
    And I click on the quote button
    Then  I validate i am on the next page or on the same page through error message and assert the message
    
    
    Examples:
    |zipcode|
    | 24046 |
    | 30024 |
    | 20191 |
  
  @Test3
  Scenario: Assert header
    When I am on the statefarm main page
    And I click on the dropdown option and select any option
    And I enter the zipcode
    And I click on the quote button
    And I validate i am on the next page
    And Click on the statefarm logo 
    And on the main page click on the banking option 
    And I click on the personal banking option 
    Then I validate the header of the page
   
   @Test4
   Scenario: Assert error message 
   When I am on the statefarm main page
   And I click on the quote button
   Then I validate the error message displayed
   
   @Test5
   Scenario: Assert help page has been displayed
   When I am on the statefarm main page
   And I click on the help option
   Then I switch the window to the other tab
   Then I validate the help page has been displayed
   
   