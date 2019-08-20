@sample
  Feature: Sample page predefined steps

    @sample1
    Scenario: Name validation
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//*[@name='name']"
      Then element with xpath "//*[@name='name']" should be displayed
      When I type "Steve" into element with xpath "//input[@id='firstName']"
      And I type "The" into element with xpath "//input[@id='middleName']"
      And I type "Jobs" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//*[@id='name']" should have attribute "value" as "Steve The Jobs"

    @sample2  
    Scenario: Username Data Validation
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//input[@name='username']"
      And I type "s" into element with xpath "//input[@name='username']"
      When I click on element with xpath "//input[@name='email']"
      Then element with xpath "//label[@id='username-error']" should contain text "2 characters"
      
    @sample3
    Scenario: Email validation
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//input[@name='email']"
      And I type "aaa@" into element with xpath "//input[@name='email']"
      When I click on element with xpath "//input[@id='password']"
      Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email address."

    @sample4
    Scenario: ConfirmPassword
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      Then element with xpath "//*[@id='confirmPassword']" should be disabled
      Then element with xpath "//*[@id='confirmPassword']" should have attribute "disabled" as "true"
      
    @sample5
    Scenario: ConfirmPassword
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "<string>"
      Then element with xpath "<string>" should contain text "Ausria"
      
    @sample6
    Scenario: Datepicer validation
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//*[@id='dateOfBirth']"
      Then element with xpath "//*[@id='ui-datepicker-div']" should be displayed
      When I click on element with xpath "//*[@class='ui-datepicker-month']/option[@value='0']"
      And I click on element with xpath "//*[@class='ui-datepicker-year']/option[@value='1980'"
      And I click on element with xpath "//td[@data-handler='selectDay']/*[text()='1']"
#      Then element with xpath "//input[@id='dateOfBirth']" should have text as "01/01/1980"
      Then element with xpath "//*[@id='dateOfBirth']" should have attribute "value" as "01/01/1980"






