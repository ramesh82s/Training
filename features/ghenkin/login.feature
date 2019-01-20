Feature: Login into ROL

  Scenario: Login to ROL
    When the user navigates to the rol login page
    And the user fills the login page with login credentials
    And the user clicks the login
#  And the user answer the security question
#  And the user hits the enter key
# update from Branch1

  Scenario: Login to Facebook
    When the user navigates to the facebook login page
    And the user fills the login page with login credentials for facebook
    And the user clicks the login

  Scenario: Login to Ebay
    When the user navigates to the ebay login page
    And the user fills the login page with login credentials for Ebay
    And the user clicks the login

  Scenario: User log in to Gmail browser
    Given the user opens the Gmail browser
#    And the user fills the login page with emailorphone
    And the user fills the login page with gmail id
    And the user clicks the next
    And the user fills the login page with gmail password
    And the user clicks the next

  Scenario: User log in to chase browser browser
    Given the user opens the browser
    And the user fills the login page with login credentials
    And the user clicks the signin

  Scenario: checkout in amazon
    Given I navigate to amazon application
    When I search for the pen
    And I click on the search icon
    And I click on link
    And I add that pen into cart
    And I click on the proceed to checkout option
    #Then I verify the "amazon sign in" title
    And I close the application