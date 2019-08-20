@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@value='Google Search'])[2]"
    Then I wait for element with xpath "//*[@id='ires']" to be present
    Then element with xpath "//*[@id='ires']" should contain text "Cucumber"
<<<<<<< HEAD
    
  @predefined2
  Scenario: Predefined steps for Yahoo search
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//*[@name='p']" should be displayed
    When I type "Java" into element with xpath "//*[@name='p']"
    And I click on element with xpath "//*[contains(@title, 'Search Web')]"
    And I wait for element with xpath "//div[@id='results']" to be present
    Then element with xpath "//div[@id='results']" should contain text "Java"
    
  @predefined3
  Scenario: Predefined steps for Bing search
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be displayed
    When I type "Japan" into element with xpath "//input[@id='sb_form_q']"
    And I click on element with xpath "//input[@id='sb_form_go']"
    And I wait for element with xpath "//div[@id='b_content']" to be present
    Then element with xpath "//div[@id='b_content']" should contain text "Japan"

    
=======

  
>>>>>>> e9fd7c90664463c9f4883e2f72c97f1e3e1968bf
