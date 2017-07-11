package com.findd.steps;

import static org.junit.Assert.assertTrue;

import org.openqa.selenium.WebDriver;

import com.findd.drivers.DriverManger;
import com.findd.pages.Dashboard;
import com.findd.pages.Employee;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Employee_steps {
WebDriver driver;
Dashboard dashboard;
Employee employee;
String recentlyCreated;

	@Then("^Employee page should displayed$")
	public void employee_page_should_displayed() throws Throwable {
		this.driver=DriverManger.getDriverInstance();	
		employee =new Employee(driver);
		assertTrue("Employee Page is loaded Successfully",employee.verify_EmployeePage());		
	}

	@When("^I click on Add Employee Button$")
	public void i_click_on_Add_Employee_Button() throws Throwable {
		employee.AddEmployeeBtn();
	}

	@Then("^Add Employee popup should displayed$")
	public void add_Employee_popup_should_displayed() throws Throwable {
		assertTrue("Add Employee popup is displayed Successfully",employee.verify_addEmployeePopup());		
	}

	@When("^I Enter \"(.*?)\" in the First Name field; in Add Employee popup$")
	public void i_Enter_in_the_First_Name_field_in_Add_Employee_popup(String firstName) throws Throwable {
		recentlyCreated=employee.setFirstName(firstName);
	}

	@When("^I Enter \"(.*?)\" in the Last Name field; in Add Employee popup$")
	public void i_Enter_in_the_Last_Name_field_in_Add_Employee_popup(String lastName) throws Throwable {
		employee.setLastName(lastName);
	}

	@When("^I Enter \"(.*?)\" in the Employee ID field; in Add Employee popup$")
	public void i_Enter_in_the_Employee_ID_field_in_Add_Employee_popup(String empID) throws Throwable {
		employee.setEmployeeID(empID);
	}

	@Then("^I click on Add Employee Button; in Add Employee popup$")
	public void i_click_on_Add_Employee_Button_in_Add_Employee_popup() throws Throwable {
		employee.AddEmployeeBtn_popup();
	}	
	
		
	@When("^I click on search button$")
	public void i_click_on_search_button() throws Throwable {
		employee.clickOnSearch();
	}

	@When("^I Enter the recently created employee in the search box$")
	public void i_Enter_the_recently_created_employee_in_the_search_box() throws Throwable {
		employee.setSearchString(recentlyCreated);
	}

	@Then("^Searched employee should displayed$")
	public void new_created_employee_should_displayed() throws Throwable {
		assertTrue("Employee is created Successfully",employee.verifyEmployeeCreated(recentlyCreated));		
	}

	@When("^I search with first employee in the result$")
	public void i_search_with_first_employee_in_the_search_box() throws Throwable {
		recentlyCreated=employee.setSearchFirstItem();
	}

	@When("^I check the first employee$")
	public void i_check_the_first_employee() throws Throwable {
		employee.checkOnFirstEmployee();
	}

	@When("^I click on delete button$")
	public void i_click_on_delete_button() throws Throwable {
		employee.clickOnDeleteButton();
	}

	@Then("^Delete confirmation popup should displayed$")
	public void delete_confirmation_popup_should_displayed() throws Throwable {
		assertTrue("Delete Employee popup is displayed Successfully",employee.verify_deleteEmployeePopup());
	}

	@When("^I click on delete button; in Delete popup$")
	public void i_click_on_delete_button_in_Delete_popup() throws Throwable {
		employee.clickOnDeletePopupButton();
	}

	@Then("^Employee record should deleted successfully$")
	public void employee_record_should_deleted_successfully() throws Throwable {
		assertTrue("Employee is Deleted Successfully",employee.verify_deleteSuccess());
	}
}
