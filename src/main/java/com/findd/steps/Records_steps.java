
package com.findd.steps;

import static org.junit.Assert.assertTrue;

import org.openqa.selenium.WebDriver;

import com.findd.drivers.DriverManger;
import com.findd.pages.RecordsPage;

import cucumber.api.java.Before;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Records_steps {
	WebDriver driver;
	RecordsPage recordsPage;
	
	@Before
	public void setup()
	{
		this.driver=DriverManger.getDriverInstance();

	}
	
	@Then("^Records page should displayed successfully$") 
	public void verify_record_Page(){
		this.driver=DriverManger.getDriverInstance();
		recordsPage =new RecordsPage(driver);
		recordsPage.verify_RecordsPage();
	}

	@When("^I click on \"([^\"]*)\" exceptions in the records page$")
	public void Click_exceptionType(String exception) {
		recordsPage.clickOn_Exception(exception);
	}

	@When("^I click on first Location exception in the records page$")
	public void clickOn_FirstLocation(){
		recordsPage.clickOn_firstException();
	}
	
	@When("^I click on first Biometric exception in the records page$")
	public void clickOn_FirstBiometricLocation(){
		recordsPage.clickOn_firstBiometricException();
	}

	@Then("^\"([^\"]*)\" should displayed in records page$")
	public void exception_Page(String message) {
		assertTrue("Incorrect Entry",recordsPage.verify_Message(message));
	}

	@When("^I click on \"([^\"]*)\" button in the exception$") 
	public void clickOn_button(String action) {
		recordsPage.clickOn_ButtonAction(action);
	}

	@Then("^Location Exception should get \"([^\"]*)\"$")
	public void Location_exception_approved(String message)
	{
		assertTrue("Location Exception is incorrect",recordsPage.verify_Message(message));	
	}

	

}
