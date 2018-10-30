package com.findd.steps;

import static org.junit.Assert.assertTrue;
import org.openqa.selenium.WebDriver;
import com.findd.drivers.DriverManger;
import com.findd.drivers.ReusableMethods;
import com.findd.pages.Dashboard;
import com.findd.pages.Employee;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Employee_steps {
WebDriver driver;
Dashboard dashboard;
Employee employee;
public static String recentlyCreated;
public static String recentlyAddedDate;
int empCount;
@Before
public void setup()
{
	this.driver=DriverManger.getDriverInstance();

}
	
	@Then("^Employee page should displayed$")
	public void employee_page_should_displayed() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		assertTrue("Employee Page is not loaded",employee.verify_EmployeePage());		
	}
	
	@Then("^Employee Details page should not displayed$")
	public void employee_details_page_shouldNot_displayed() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		assertTrue("Employee Deatils Page is loaded",employee.verify_EmployeeDetailspage_notDisplayed());		
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
	
	@When("^I Enter \"(.*?)\" in the Clock Pin field; in Add Employee popup$")
	public void i_Enter_in_the_clock_pin_field_in_Add_Employee_popup(String clockPin) throws Throwable {
		clockPin=ReusableMethods.generateUniqueName(clockPin);
		employee.setClockPin(clockPin);
	}


	@Then("^I click on Add Employee Button; in Add Employee popup$")
	public void i_click_on_Add_Employee_Button_in_Add_Employee_popup() throws Throwable {
		employee.AddEmployeeBtn_popup();
	}

	@When("^I click on Default Employee Level; in Add Employee popup$")
	public void i_click_on_DefaultEmployeeLeve_in_Add_Employee_popup() throws Throwable {
		employee.clickOn_DefaultEmployeeLevel();
	}	
	
	@Then("^I verify the time \"(.*?)\" is entered in the Default level \"(.*?)\"$")
	public void i_verify_the_time_is_entered_in_the_Default_level(String level, String time) throws Throwable {
		assertTrue("Employee is created Successfully",employee.verify_DefaultLevel(time, level));
	}
		
	@When("^I click on search button$")
	public void i_click_on_search_button() throws Throwable {
		employee.clickOnSearch();
	}
	
	@When("^I click on \"(.*?)\" button in the Employee Page$")
	public void i_click_on_button_in_accountPage(String button) throws Throwable {
		employee.clickOn_buttonByName(button);
	}


	@When("^I Enter the recently created employee in the search box$")
	public void i_Enter_the_recently_created_employee_in_the_search_box() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.setSearchString(recentlyCreated);
	}

	@When("^I Enter the recently used employee in the search box$")
	public void i_Enter_the_recently_used_employee_in_the_search_box() throws Throwable {
		employee.setSearchString(recentlyCreated);
	}
	
	@When("^I Enter the \"(.*?)\" in the search box$")
	public void i_Enter_the_used_employee_in_the_search_box(String Name ) throws Throwable {
		employee.setSearchString(Name);
	}
	
	@When("^I Enter the recently created employee in the First Name box$")
	public void i_Enter_the_recently_created_employee_in_the_firstname_box() throws Throwable {
		employee.setFirstName1(recentlyCreated);
	}

	@Then("^Searched employee should displayed$")
	public void new_created_employee_should_displayed() throws Throwable {
		assertTrue("Employee is created Successfully",employee.verifyEmployeeCreated(recentlyCreated));		
	}

	@When("^I search with first employee in the result$")
	public void i_search_with_first_employee_in_the_search_box() throws Throwable {
		employee =new Employee(driver);
		recentlyCreated=employee.setSearchFirstItem();
	}

	@When("^I check the first employee$")
	public void i_check_the_first_employee() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.checkOnFirstEmployee();
	}
	
	
	@When("^I click the first employee$")
	public void i_click_the_first_employee() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.clickOnFirstEmployee();
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
	
	@When("^Change Employee to \"(.*?)\"$")
	public void change_employee_Status(String Status) throws Throwable {
		employee.changeStatus(Status);
	}

	@When("^I click on InActive link$")
	public void i_click_on_Inactive() throws Throwable {
		employee.clickOnInactive();
	}
	
	@When("^I click on Active link$")
	public void i_click_on_Active() throws Throwable {
		employee.clickOnActive();
	}
	
	
	@When("^I when click Add Punch on \"(.*?)\"$")
	public void i_when_click_Add_Punch_on(String day) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.clickOnAdd(day);
	}

	@Then("^Add Punch popup is displayed$")
	public void add_Punch_popup_is_displayed() throws Throwable {
		assertTrue("Add Punch popup is not displayed",employee.verify_AddPunchPopup());
	}

	@When("^I set Hour as \"(.*?)\" , Min as \"(.*?)\" and periods as \"(.*?)\" ;in Add Punch Popup$")
	public void i_set_Hour_as_Min_as_and_periods_as(String Hour, String Min, String Period) throws Throwable {
		employee.setTime(Hour, Min, Period);
	}

	@When("^I click on Add Punch Button ;in Add Punch Popup$")
	public void i_click_on_Add_Punch_Button() throws Throwable {
		employee.clickOn_AddPunch();
	}

	@Then("^Time \"(.*?)\" should added to the \"(.*?)\" time to the day \"(.*?)\" on TimeCard$")
	public void time_should_added_to_the_time_to_the_day_on_TimeCard(String time,String type,String day) throws Throwable {
		assertTrue("Add Punch popup is not displayed",employee.verify_timeAdded(time, day,type));
	}
	
	@And("^I delete all the time entries of the employee$")
	public void i_delete_all_the_time_entries_of_the_employee() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.deleteTime_entryAll();
	}

	@And("^I delete the time entries of the employee$")
	public void i_delete_the_time_entries_of_the_employee() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.deleteTime_entry();
	}
	@Then("^All the time entry of the employee should deleted$")
	public void all_the_time_entry_of_the_employee_should_deleted() throws Throwable {
		assertTrue("All/Some time entry is present",employee.verify_AllTimeEntryDeleted());
	}


	@When("^I click on Approve Button in the Employees Timechard$")
	public void i_click_on_Approve_Button_in_the_Employees_Timechard() throws Throwable {
		employee.clickOn_ApproveTimesheet();
	}
	
	@Then("^Approve Selected Timecards popup should displayed$")
	public void approve_Selected_Timecards_popup_should_displayed() throws Throwable {
		assertTrue("All/Some time entry is present",employee.verify_ApproveTimesheetPopup());
	}
	
	@When("^I click on Ok Button; in Approve Selected Timecards popup$")
	public void i_click_on_Ok_Button_in_Approve_Selected_Timecards_popup() throws Throwable {
		employee.clickOn_ApproveTimesheetOK();
	}
	
	@Then("^Timecard approved and locked message should displayed$")
	public void timecard_approved_and_locked_message_should_displayed() throws Throwable {
		assertTrue("Timecard approved and locked message is not displayed",employee.verify_ApproveMessage());
	}
		
	
	@When("^I click on Unlock Button in the Employees Timechard$")
	public void i_click_on_Unlock_Button_in_the_Employees_Timechard() throws Throwable {
		employee.clickOn_UnlockTimecard();
	}

	@Then("^Unlock Timecards popup should displayed$")
	public void unlock_Timecards_popup_should_displayed() throws Throwable {
		assertTrue("Timecard approved and locked message is not displayed",employee.verify_UnlockTimecardPopup());	
	}

	@When("^I click on Ok Button; in Unlock Timecard popup$")
	public void i_click_on_Ok_Button_in_Unlock_Timecard_popup() throws Throwable {
		employee.clickOn_UnlockTimecardOK();
	}

	@Then("^Timecard should unlocked successfully$")
	public void timecard_should_unlocked_successfully() throws Throwable {
		assertTrue("Timecard approved and locked message is not displayed",employee.verify_UnlockTimeCardSuccess());
	}

	@When("^I get the date of timecard added by day \"(.*?)\" in Employee page$")
	public void i_get_the_date_of_timecard_added_by_day_in_Employee_page(String day) throws Throwable {
	    recentlyAddedDate=employee.getTimecardDate(day);
	}

	@When("^I click the Punch Level; in Add Punch Popup$")
	public void i_click_the_Punch_Level_in_Add_Punch_Popup() throws Throwable {
		employee.clickOn_PunchLevel();
	}
	
	@Then("^Choose Hierarchy Item popup is displayed$")
	public void choose_Hierarchy_Item_popup_is_displayed() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		assertTrue("Timecard approved and locked message is not displayed",employee.verify_HierarchyItemPopup());
	}
	
	@When("^I choose Location as \"(.*?)\"; in Choose Hierarchy Item Popup$")
	public void i_choose_Location_as_in_Choose_Hierarchy_Item_Popup(String level) throws Throwable {
		employee.choose_Hierarchy(level);
	}
	
	@When("^I click on Ok button; in Choose Hierarchy Item Popup$")
	public void i_click_on_Ok_button_in_Choose_Hierarchy_Item_Popup() throws Throwable {
		employee.clickOn_hierarchyItemOkbtn();
	}

	@When("^I click on Show Component Timecards$")
	public void i_click_on_Show_Component_Timecards() throws Throwable {
		employee.clickOn_ShowComponentTimecardsbtn();
	}

	@Then("^Time \"(.*?)\" should added to the \"(.*?)\" time to the day \"(.*?)\" on TimeCard \"(.*?)\" Hierarchy$")
	public void time_should_added_to_the_time_to_the_day_on_TimeCard_Hierarchy(String time, String type, String day, String item) throws Throwable {
		employee.verify_ComponentTimeAdded(time, day, type, item);
	}
	
	@Then("^I verify \"(.*?)\" is set as \"(.*?)\" to the day \"(.*?)\" on TimeCard in \"(.*?)\" Hierarchy$" )
	public void i_verify_is_set_as_to_the_day_on_TimeCard(String field, String Expected, String day,String Hierarchy) throws Throwable {
		assertTrue("Incorrect Calculation",employee.verify_dailyTime(field, Expected, day,Hierarchy));	}

	@When("^I store the value of Employee Record$")
	public void i_Store_value_employee_Count() throws Throwable {
		empCount=employee.getEmployeeCount();
	}
	
	@When("^I click on Select All employee checkbox$")
	public void i_Select_all() throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);
		employee.clickOn_selectAll();
	}

	@When("^I click on Device Tab in employee$")
	public void i_click_deviceTab_employee() throws Throwable {
		employee.clickOn_DeviceTab();
	}
	
	@When("^I click on Records Tab in employee$")
	public void i_click_deviceTab_records() throws Throwable {
		employee.clickOn_RecordsTab();
	}
	
	@When("^I check employee record is increased by 1$")
	public void i_verify_value_employee_Count() throws Throwable {
		assertTrue("Incorrect Employee Count", ReusableMethods.checkCountEqual((empCount+1), employee.getEmployeeCount()));
	}
	
	@Then("^\"(.*?)\" should displayed$")
	public void Verify_Result(String value) throws Throwable {
		this.driver=DriverManger.getDriverInstance();
		employee =new Employee(driver);	
		assertTrue("Value not displayed",employee.verify_present(value));
	}
}
