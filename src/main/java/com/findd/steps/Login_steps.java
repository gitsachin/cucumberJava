package com.findd.steps;

import static org.junit.Assert.assertTrue;
import org.openqa.selenium.WebDriver;
import com.findd.drivers.DriverManger;
import com.findd.drivers.ReadPropFile;
import com.findd.pages.Dashboard;
import com.findd.pages.Employee;
import com.findd.pages.LoginPage;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Login_steps {
WebDriver driver;
LoginPage loginpage;
Dashboard dashboard;
Employee employee;
String recentlyCreated;		
	
	@Given("^URL in the browser$")
	public void URL_in_the_browser() throws Throwable {
	  DriverManger wdriver=new DriverManger();
	  wdriver.openURL();  
	}

	@Then("^Login page should displayed$")
	public void Login_page_should_displayed() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		loginpage=new LoginPage(driver);
		assertTrue("Login Page is loaded Successfully",loginpage.verify_loginPage());
	}
	
	@When("^I Enter Automation UserId in the User Email$")
	public void i_Enter_in_the_defaultUser_Email() throws Throwable {
		loginpage.setUserEMail(ReadPropFile.getValue("Automation_UserID"));
	}

	@Then("^I Enter Automation Password in the User Password$")
	public void i_Enter_in_the_defaultUser_Password() throws Throwable {
		loginpage.setUserPassword(ReadPropFile.getValue("Automation_Password"));
	}

	@When("^I Enter \"(.*?)\" in the User Email$")
	public void i_Enter_in_the_User_Email(String email) throws Throwable {
		loginpage.setUserEMail(email);
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
		dashboard.clickOnEmployeeMenu();
	}
	
	
	@When("^I click on setting option$")
	public void i_click_on_setting_option() throws Throwable {
		dashboard.clickOnSetting();
	}
		
	@When("^I click on Logout$")
	public void i_click_on_Logout() throws Throwable {
		dashboard.clickOnLogout();
	}
	
	@Then("I close the browser$")
	public void close() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		driver.quit();
	}	

}
