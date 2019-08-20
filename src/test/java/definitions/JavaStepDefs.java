package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaStepDefs {
    @Given("^I write first java steps$")
    public void iWriteFirstJavaSteps()  {
        System.out.println("Hello World");
        String firstName="Peter";
        String lastName="Orange";
        String colorName="Green";
        System.out.println(firstName);
        System.out.println();
        System.out.println(lastName);
        System.out.println(colorName);



    }

    @And("^I print \"([^\"]*)\" in console$")
    public void iPrintInConsole(String txt) throws Throwable {
        System.out.println();
        System.out.println(txt);
        System.out.println(txt.length());
        System.out.println(txt.toUpperCase());
        System.out.println(txt.toLowerCase());


    }

    @And("^I do action with \"([^\"]*)\" and \"([^\"]*)\"$")
    public void iDoActionWithAnd(String arg0, String arg1) throws Throwable {
        System.out.println();
        System.out.println("First variable value is " + arg0);
        System.out.println("Second variable value is " + arg1);
        System.out.println("Upper case: " + arg0.toUpperCase());
        System.out.println("Upper case: " + arg1.toUpperCase());
        System.out.println(arg0 + "is equal to " + arg1 + " ? " + (arg0 == arg1));
        System.out.println("arg0 is equal arg1 ? " + arg0.equals(arg1));
    }
    @And("^I compare \"([^\"]*)\" and \"([^\"]*)\"$")
    public void iCompareAnd(String arg0, String arg1) {
        if (arg0.equalsIgnoreCase(arg1)){
            System.out.println("String are equal: " +arg0+ " and "+arg1);
        }else {
            System.out.println();
            System.out.println("String are not equal: "+arg0+ "and"+arg1);
        }

    }
    @Given("^I run operators with (\\d+) and (\\d+)$")
    public void iRunOperatorsWithAnd(int arg0, int arg1) throws Throwable {
        if (arg0<arg1){
            System.out.println();
            System.out.println("First number is less then second");
        }else {
            System.out.println("First number is larger then second");
        }
        System.out.println(arg0/arg1);
        System.out.println();
        int num1=5;
        int num2=2;
        System.out.println(num1 + num2);
        System.out.println(num1 - num2);


    }

    @Given("^I print arrays$")
    public void iPrintArrays() throws Throwable {
        String[]groceryList={"lemon","pear","grape","kiwi"};
        System.out.println();
//        System.out.println(groceryList);// would not print it, use loop
//        for loop
        for (int i=0;i<groceryList.length; i++){
            System.out.println(groceryList[i]);
        }
        //for each loop
        for (String el:groceryList){
            System.out.println(el);
        }
        System.out.println(groceryList[0]);
        System.out.println(groceryList[3]);
    }
}
