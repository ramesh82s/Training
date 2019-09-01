Feature: Login into ROL

#  Background:
#    When the user opens the huntington login page

  Scenario: Login to Huntington
#    When the user navigates to the huntington login page
    And the user fills the login page with login credentials
    And the user clicks the login
#  And the user answer the security question
#  And the user hits the enter key
# update from Branch1

  Scenario Outline: Login
    When the user navigates to the <link> page
    And the user fills the login page with <credentials>
    And the user clicks the <login>
    And the user verifies the error message not a match

    Examples:
      | link           | credentials                        | login |
      | facebook login | login credentials for facebook     | login |
      | ebay login     | login credentials for ebay         | login |
      | ebay login     | invalid login credentials for Ebay | login |

  @regression
  Scenario Outline: Facebook sign up
    When the user navigates to the <link> page
    And the user fills the login page with <personal_info>
    And the user clicks the gender

    Examples:
      | link           | personal_info       |
      | facebook login | sign up information |


  Scenario: Verifying table data(HTML td tag) in w3schhol web page
    When the user navigates to the w3schools page
#    And  read the details of table company
    #below step has two variables to pass to step definition , 1.table data from web(company) 2.data collecting from yaml input file(COMPANY_COLUMN_NAMES, COMPANY_ROW1)
    #the other option is to give values directly (| Company             | Contact      | Country | and | Alfreds Futterkiste | Maria Anders | Germany |)
    And the user verifies that the table company includes the following row
      | COMPANY_COLUMN_NAMES |
      | COMPANY_ROW1         |
    #  | Company             | Contact      | Country |
     # | Alfreds Futterkiste | Maria Anders | Germany |
   # And  display the details



#  Scenario: Login to Ebay
#    When the user navigates to the ebay login page
#    And the user fills the login page with login credentials for Ebay
#    And the user clicks the login

  Scenario: User log in to Gmail browser
    Given the user opens the Gmail browser1
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


  @regression
  Scenario: ebay register account creation
    Given the user navigates to the ebay page
    When the user clicks the register
    And the user clicks the business account
    And the user fills the login page with register information
    And the user clicks the change image
    And the user clicks the listen numbers


  Scenario: verify the drop down data in facebook sign up page
    Given the user navigates to the facebook login page
    #below step has two variables 1.month dropdown(data from webpage) 2.MONTH_DROPDOWN_VALUES(data from YAML file) then two are compared
    #other option is to give the values directly (|Month | |Jan|....etc)
    And the user verifies the below dropdown has the expected values
      |month_dropdown|
      |day_dropdown  |
      |year_dropdown |


  Scenario: PNC bank web page test automation
    Given the user navigates to the pnc bank page
    When the user selects the banking option

