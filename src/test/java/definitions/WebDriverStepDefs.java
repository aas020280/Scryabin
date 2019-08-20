package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Java6Assertions.assertThat;
import static support.TestContext.getDriver;

public class WebDriverStepDefs {
    @Given("^I go to \"([^\"]*)\" and print detiles$")
    public void iGoToAndPrintDetiles(String page) throws Throwable {
        if (page.equals("google")){
            getDriver().get("https://www.google.com");
        }else if (page.equals("sample")){
            getDriver().get("http://skryabin.com/webdriver/html/sample.html");

        }else {
            System.out.println("Unknown page "+getDriver().getCurrentUrl());
        }
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());

    }

    @And("^I go back and forward, then refresh the page$")
    public void iGoBackAndForwardThenRefreshThePage() {
        getDriver().navigate().back();
        getDriver().navigate().forward();
        getDriver().navigate().refresh();

    }

    @Given("^I open \"([^\"]*)\" then \"([^\"]*)\" then \"([^\"]*)\"$")
    public void iOpenThenThen(String url1, String url2, String url3) throws Throwable {
       String[]urls={url1,url2,url3};
        for (String url:urls) {
            System.out.println(url);
            getDriver().get(url);
            Thread.sleep(1000);
        }
    }

    @Given("^I go to \"([^\"]*)\" page$")
    public void iGoToPage(String arg0) throws Throwable {
        getDriver().get("http://skryabin.com/webdriver/html/sample.html");


    }

    @When("^I fill out  first name \"([^\"]*)\" and last name \"([^\"]*)\"$")
    public void iFillOutFirstNameAndLastName(String firstName, String lastName) throws Throwable {
       getDriver().findElement(By.xpath("//*[@id='name']")).click();
       getDriver().findElement(By.xpath("//*[@id='firstName']")).sendKeys(firstName);
       getDriver().findElement(By.xpath("//*[@id='lastName']")).sendKeys(lastName);
       getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();

    }

    @And("^I fill out required fields$")
    public void iFillOutRequiredFields() throws Throwable {
        WebElement userName=getDriver().findElement(By.xpath("//input[@name='username']"));
        userName.sendKeys("ab");
        Thread.sleep(500);
        WebElement email=getDriver().findElement(By.xpath("//input[@name='email']"));
        email.sendKeys("ab@ab.com");
        Thread.sleep(500);
        WebElement password=getDriver().findElement(By.xpath("//input[@id='password']"));
        password.sendKeys("12345");
        Thread.sleep(500);
        WebElement confirmPassword=getDriver().findElement(By.xpath("//input[@id='confirmPassword']"));
        confirmPassword.sendKeys("12345");
        Thread.sleep(500);
        WebElement agreed=getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']"));
        agreed.click();
        Thread.sleep(500);
        WebElement submit=getDriver().findElement(By.xpath("//button[@id='formSubmit']"));
        submit.submit();
        Thread.sleep(500);


    }

    @Then("^I assert required fields$")
    public void iAssertRequiredFields() {
        WebElement resultPage=getDriver().findElement(By.xpath("//legend[@class='applicationResult']"));
        assertThat(resultPage.isDisplayed()).isTrue();
        String privatPolicy=getDriver().findElement(By.xpath("//b[@name='agreedToPrivacyPolicy']")).getText();
        System.out.println(privatPolicy);
        assertThat(privatPolicy).isEqualTo("True");
        String firstName=getDriver().findElement(By.xpath("//b[@name='firstName']")).getText();
        System.out.println(firstName);
        assertThat(firstName).isEqualToIgnoringCase("a");
    }
}
