@HM_1
  Feature: Fill the page

    Scenario: Fill the page
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//input[@id='name']"
      And I type "Alexey" into element with xpath "//input[@id='firstName']"
      And I type "Sergeevich" into element with xpath "//input[@id='middleName']"
      And I type "Ivanov" into element with xpath "//input[@id='lastName']"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      When I click on element with xpath "//select[@name='countryOfOrigin']"
      And I click on element with xpath "//option[contains(text(),'Russia')]"
      When I click on element with xpath "//textarea[@id='address']"
      And I type "1431 Saratoga Ave apt 1, 95129, San jose, CA" into element with xpath "//textarea[@id='address']"
      When I click on element with xpath "//input[@name='username']"
      And I type "aas" into element with xpath "//input[@name='username']"
      When I click on element with xpath "//input[@name='email']"
      And I type "aas@bk.ru" into element with xpath "//input[@name='email']"
      When I click on element with xpath "//input[@id='password']"
      And I type "12345" into element with xpath "//input[@id='password']"
      When I click on element with xpath "//input[@id='confirmPassword']"
      And I type "12345" into element with xpath "//input[@id='confirmPassword']"
      When I click on element with xpath "//input[@name='phone']"
      And I type "+14085971111" into element with xpath "//input[@name='phone']"
      Then I click on element with xpath "//div[5]//label[2]//input[1]"
      Then I click on element with xpath "//option[contains(text(),'Toyota')]"
      When I click on element with xpath "//input[@id='dateOfBirth']"
      Then I type "02/02/1980" into element with xpath "//input[@id='dateOfBirth']"
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//b[@name='firstName']" should contain text "Alexey"
      Then element with xpath "//b[@name='middleName']" should contain text "Sergeevich"
      Then element with xpath "//b[@name='lastName']" should contain text "Ivanov"
      Then element with xpath "//b[@name='name']" should contain text "Alexey Sergeevich Ivanov"
      Then element with xpath "//b[@name='countryOfOrigin']" should contain text "Russia"
      Then element with xpath "//b[@name='address']" should contain text "1431 Saratoga Ave apt 1, 95129, San jose, CA"
      Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
      Then element with xpath "//b[@name='username']" should contain text "aas"
      Then element with xpath "//b[@name='email']" should contain text "aas@bk.ru"
      Then element with xpath "//b[@name='password']" should contain text "[entered]"
      Then element with xpath "//b[@name='phone']" should contain text "14085971111"
      Then element with xpath "//b[@name='dateOfBirth']" should contain text "02/02/1980"
      Then element with xpath "//b[@name='gender']" should contain text "male"
      Then element with xpath "//b[@name='carMake']" should contain text "Toyota"
      Then element with xpath "//b[@name='location']" should contain text "Los Altos, CA 94022"
      Then element with xpath "//b[@name='currentDate']" should contain text "04/24/2019"
      Then I click on element with xpath "//button[@id='return']"






