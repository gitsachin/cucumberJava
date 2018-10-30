package com.findd.steps;

import static org.junit.Assert.assertTrue;


import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import com.findd.drivers.DriverManger;
import com.findd.drivers.ReadPropFile;
import com.findd.pages.Dashboard;
import com.findd.pages.Employee;
import com.findd.pages.LoginPage;
import com.findd.pages.Timecards;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Login_steps {
WebDriver driver;
LoginPage loginpage;
Dashboard dashboard;
Employee employee;
Timecards timecards;
String recentlyCreated;		
Scenario scenario;
String environment="Test";
@Before
public void setup(Scenario scenario)
{
	this.driver=DriverManger.getDriverInstance();	
	this.scenario = scenario;

}
	@Given("^URL in the browser$")
	public void URL_in_the_browser() throws Throwable {
	  DriverManger wdriver=new DriverManger();
	  wdriver.openURL(ReadPropFile.getValue("URL"));  
	}
	
	@Given("^\"(.*?)\" URL in the browser$")
	public void url_in_the_browser(String env) throws Throwable {
		String url = null;
		environment=env;			
	    if(env.equalsIgnoreCase("Test"))
	    {
	    	url=ReadPropFile.getValue("Test_URL");
	    }
	    else if(env.equalsIgnoreCase("Dev"))
	    {
	    	url=ReadPropFile.getValue("Dev_URL");
	    }
	    else if(env.equalsIgnoreCase("Prod"))
	    {
	    	url=ReadPropFile.getValue("Prod_URL");
	    }
	    DriverManger wdriver=new DriverManger();
	    wdriver.openURL(url);
	}

	@Then("^Login page should displayed$")
	public void Login_page_should_displayed() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		loginpage=new LoginPage(driver);
		assertTrue("Login Page is loaded Successfully",loginpage.verify_loginPage());		
	}
	
	
	@When("^I Enter Automation UserId in the User Email$")
	public void i_Enter_in_the_defaultUser_Email() throws Throwable {
		String id = null;
		this.driver=DriverManger.getDriverInstance();
		loginpage=new LoginPage(driver);		
		if(environment.equalsIgnoreCase("Test"))
	    {
			id=ReadPropFile.getValue("Test_Automation_UserID");
	    }
	    else if(environment.equalsIgnoreCase("Dev"))
	    {
	    	id=ReadPropFile.getValue("Dev_Automation_UserID");
	    }
	    else if(environment.equalsIgnoreCase("Prod"))
	    {
	    	id=ReadPropFile.getValue("Prod_Automation_UserID");
	    }
		loginpage.setUserEMail(id);
	}

	@Then("^I Enter Automation Password in the User Password$")
	public void i_Enter_in_the_defaultUser_Password() throws Throwable {
		String Password = null;
		if(environment.equalsIgnoreCase("Test"))
	    {
			Password=ReadPropFile.getValue("Test_Automation_Password");
	    }
	    else if(environment.equalsIgnoreCase("Dev"))
	    {
	    	Password=ReadPropFile.getValue("Dev_Automation_Password");
	    }
	    else if(environment.equalsIgnoreCase("Prod"))
	    {
	    	Password=ReadPropFile.getValue("Prod_Automation_Password");
	    }
		loginpage.setUserPassword(Password);
	}

	@When("^I Enter \"(.*?)\" in the User Email$")
	public void i_Enter_in_the_User_Email(String email) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		loginpage=new LoginPage(driver);	
		loginpage.setUserEMail(email);
	}

	@When("^I Enter Newly created UserId in the User Email$")
	public void i_Enter_Newly_created_UserId_in_the_User_Email() throws Throwable {
		loginpage.setUserEMail(Account_steps.recentlyCreatedEmail);
	}
	@Then("^I Enter \"(.*?)\" in the User Password$")
	public void i_Enter_in_the_User_Password(String password) throws Throwable {
		loginpage.setUserPassword(password);
	}

	@And("^I click on Login Button$")
	public void i_click_on_Login_Button() throws Throwable {
		loginpage.clickLoginButton();
	}
	
	@When("^\"(.*?)\" error should thrown in Login Page$")
	public void error_loginPage(String error) throws Throwable {
		assertTrue("Error is not thrown",loginpage.verify_loginError(error));
	}
	
	@Then("^Home page should displayed$")
	public void home_page_should_displayed() throws Throwable {
		dashboard=new Dashboard(driver);
		assertTrue("Home is not loaded",dashboard.verify_Homepage());		
	}
	
	@When("^I click on Employee Menu in Homepage$")
	public void i_click_on_Employee_Menu_in_Homepage() throws Throwable {
		//this.driver=DriverManger.getDriverInstance();
		dashboard=new Dashboard(driver);
		dashboard.clickOnEmployeeMenu();
	}
	
	@When("^I click on Timecards Menu in Homepage$")
	public void i_click_on_Timecards_Menu_in_Homepage() throws Throwable {
		dashboard=new Dashboard(driver);
		dashboard.clickOnTimecardsMenu();
	}
	
	@When("^I click on Records Menu in Homepage$")
	public void i_click_on_Records_Menu_in_Homepage() throws Throwable {
		dashboard=new Dashboard(driver);
		dashboard.clickOnRecordsMenu();;
	}
	
	
	
	@When("^I click on setting option$")
	public void i_click_on_setting_option() throws Throwable {
		dashboard=new Dashboard(driver);
		dashboard.clickOnSetting();
	}
	
	@When("^I click on Hierarchy Setting option from Top$")
	public void i_click_on_Hierarchysetting_option() throws Throwable {
		dashboard=new Dashboard(driver);
		dashboard.clickOn_HierarchySetting();
	}
	
	@When("^I click on Logout$")
	public void i_click_on_Logout() throws Throwable {
		dashboard.clickOnLogout();
	}
	
	@When("^I click on Dashboard$")
	public void i_clickOnDashboard() throws Throwable {
		dashboard=new Dashboard(driver);
		dashboard.clickOnDashboard();
	}
	
	@When("^I click on Hierarchy Menu$")
	public void i_clickOnHierarchy() throws Throwable {
		dashboard=new Dashboard(driver);
		dashboard.clickOn_HierarchyMenu();
	}
	
	
	@When("^I click on Account$")
	public void i_clickOnAccountt() throws Throwable {
		dashboard.clickOnAccount();
	}
	
	@When("^I click on Profile$")
	public void i_clickOnProfile() throws Throwable {
		dashboard.clickOnProfile();
	}
	
	
	@Then("I close the browser$")
	public void close() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		driver.quit();		
	}	

	@Then("Close all the open browser$")
	public void closeAll() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		driver.quit();
	}	
	
	@After
	public void takescreen() {
		  if (scenario.isFailed()) {
	    	   final byte[] screenshot = ((TakesScreenshot) driver)
	                        .getScreenshotAs(OutputType.BYTES);
	            scenario.embed(screenshot, "image/png"); //stick it in the report
	    }
	}
	
	@When("^I try to click on \"(.*?)\" in \"(.*?)\" Page$")
	public void i_try_to_click_on_in_Page(String field, String page) throws Throwable {
		boolean result=false;
	    if(page.equalsIgnoreCase("Employee"))
	    {
	    	this.driver=DriverManger.getDriverInstance();
			employee =new Employee(driver);
			result=employee.checkFor_ElementNotInteractable(field);
	    }
		assertTrue("Element is Present",result);
	}

	@Then("^\"(.*?)\" should not displayed in \"(.*?)\" Page$")
	public void should_not_displayed_in_Page(String field, String page) throws Throwable {
		boolean result=false;
	    if(page.equalsIgnoreCase("Employee"))
	    {
	    	this.driver=DriverManger.getDriverInstance();
			employee =new Employee(driver);
			result=employee.checkNot_displayed(field);
	    }  
	    else if(page.equalsIgnoreCase("Timecards"))
	    {
	    	this.driver=DriverManger.getDriverInstance();
	    	timecards =new Timecards(driver);
			result=timecards.checkNot_displayed(field);
	    }  
	    
	    
	    assertTrue("Element is displayed",result);
	}

	@Then("^\"(.*?)\" should displayed in \"(.*?)\" Page$")
	public void should_displayed_in_Page(String field, String page) throws Throwable {
		boolean result=false;
	    if(page.equalsIgnoreCase("Employee"))
	    {
	    	this.driver=DriverManger.getDriverInstance();
			employee =new Employee(driver);
			result=employee.verify_present(field);
	    }  
	    assertTrue("Element is displayed",result);
	}
	@When("^I wait for (\\d+) seconds$")
	public void i_wait_for_seconds(int seconds) throws Throwable {	    
		Thread.sleep(seconds*1000);
		
	}


}
