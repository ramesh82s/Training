Feature: checkout in amazon
  Scenario: checkout in amazon
    Given I navigate to amazon application
    When I search for the pen
    And I click on the search icon
    And I click on link
    And I add that pen into cart
    And I click on the proceed to checkout option
    #Then I verify the "amazon sign in" title
    And I close the application
