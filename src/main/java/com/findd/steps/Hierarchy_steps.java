package com.findd.steps;

import org.openqa.selenium.WebDriver;

import com.findd.drivers.DriverManger;
import com.findd.pages.HierarchyPage;

import cucumber.api.java.Before;
import cucumber.api.java.en.When;

public class Hierarchy_steps {
	WebDriver driver;
	HierarchyPage hierarchyPage;
	@Before
	public void setup()
	{
		this.driver=DriverManger.getDriverInstance();

	}
	
	@When("^I click on \"(.*?)\" left menu in the Hierarchy Page$")
	public void i_click_position_Left_in_the_Account_Page(String menu) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		hierarchyPage= new HierarchyPage(driver);
		hierarchyPage.clickOn_LeftMenu(menu);
	}

}
