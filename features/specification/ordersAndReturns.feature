Feature: Test for Order Search Page

  Background:
    Given I am on the order search page

  Scenario: Successful submission with "Find Order By" option selected as "Email"
    When I select the option "Email" in the Find Order By field
    And I fill in all the required fields with valid values
    And I click the continue button
    Then as I do not have any order registered the system shows me an error message

  Scenario: Successful submission with "Find Order By" option selected as "Zipcode"
    When I select the option "Zipcode" in the Find Order By field
    And I fill in all the required fields with valid values
    And I click the continue button
    Then as I do not have any order registered the system shows me an error message