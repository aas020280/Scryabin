@WebDriver
  Feature: Webdriver methods

  @WebDriver1
  Scenario: Open the page
    Given I go to "google" and print detiles
    And I go to "sample" and print detiles
    And I go back and forward, then refresh the page

  @webdriver2
  Scenario: Loop through urls
    Given I open "https://www.google.ru/" then "https://www.yahoo.com/" then "https://www.bing.com/"

  @webdriver3
  Scenario: Element steps
    Given I go to "sample" page
    When I fill out  first name "a" and last name "b"
    And I fill out required fields
    Then I assert required fields


