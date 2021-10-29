# This is the file where we define 
@create_account
Feature: As a visitor I want to be able to create an account
    Background:
        Given I am on the create account page

@wip
Scenario: Create account form positive test case
    When I fill the first name input field
    And I fill the last name input field
    And I fill the email input field
    And I fill the adress input field
    And I fill the city input field with "Daugavpils"
    And I select country "Latvia" in the dropdown
    And I select region "Daugavpils" in the dropdown
    And I fill the zip code input field with "LV-5422"
    And I fill the login name input field
    And I fill the password input field with "P@ssw0rd"
    And I fill the password confirmation input field with "P@ssw0rd"
    And I select privacy policy checkbox
    And I press continue button
    And I check whether I created account succesfully