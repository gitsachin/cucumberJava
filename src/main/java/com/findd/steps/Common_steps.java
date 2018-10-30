package com.findd.steps;

import static org.junit.Assert.assertTrue;

import org.openqa.selenium.WebDriver;

import com.findd.drivers.DriverManger;
import com.findd.drivers.ReusableMethods;

import cucumber.api.java.Before;
import cucumber.api.java.en.When;

public class Common_steps {
	WebDriver driver;
	
	@Before
	public void setup()
	{
		this.driver=DriverManger.getDriverInstance();
	}

	@When("^I verify column \"(.*?)\"$")
	public void i_verify_columns(String columns) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		assertTrue("Error is not thrown",ReusableMethods.columnCompare(driver, columns));
	}
	
	@When("^I verify columns \"(.*?)\" with classname \"(.*?)\"$")
	public void i_verify_columns_ByXPath(String columns,String startingXpath) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		startingXpath="//*[@class='"+startingXpath+"']";
		assertTrue("Error is not thrown",ReusableMethods.columnCompare(driver, columns, startingXpath));
	}
	
	@When("^I enter url as \"(.*?)\"$")
	public void i_enter_url(String url) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		DriverManger.navigateToURL(this.driver, url);
	}
	
	@When("^I refresh the page$")
	public void i_press_F5Key() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		Thread.sleep(2000);
		driver.navigate().refresh();
	}
	
}

