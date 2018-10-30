package com.findd.steps;

import static org.junit.Assert.assertTrue;


import org.openqa.selenium.WebDriver;
import com.findd.drivers.DriverManger;
import com.findd.pages.Timecards;
import com.findd.utils.ExcelCompare_SendMail;
import com.findd.utils.FileOperations;

import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Timecards_steps {
WebDriver driver;
Timecards timecards;

@Before
public void setup()
{
	this.driver=DriverManger.getDriverInstance();

}	

@Then("^Timecards page should displayed$")
public void timecards_page_should_displayed() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	timecards= new Timecards(driver);
	assertTrue("Timecards Page is not loaded",timecards.verify_TimecardsPage());
}

@When("^I click on Download Reports in the Timecards page$")
public void i_click_on_Download_Reports_in_the_Timecards_page() throws Throwable {
	timecards.clickOn_DownloadReport();
}

@When("^I select \"(.*?)\" in the Timecards page$")
public void i_select_in_the_Timecards_page(String report) throws Throwable {
	timecards.select_Report(report);
}

@Then("^\"(.*?)\" popup should displayed$")
public void Report_popup_should_displayed(String report) throws Throwable {
	timecards.verify_TimecardSummaryReportPopup(report);
}

@When("^I click on Download button; in \"(.*?)\" popup$")
public void i_click_on_Download_button_in_Timecard_Summary_Report_popup(String report) throws Throwable {
	timecards.clickOn_Download();
}

@When("^I click on Download Payroll File in Timecards Page$")
public void i_click_on_Download_Payroll_File_timecard_page() throws Throwable {
	timecards.clickOn_DownloadPayrollFile();
}

@Then("^Payroll File should downloaded$")
public void payroll_File_should_downloaded() throws Throwable {
	FileOperations fo=new FileOperations();	
	assertTrue("Report not exist",fo.fileExistByPartialName("Automated_Testing-"));
}

@Then("^Timecard Summary Report should downloaded$")
public void timecard_Summary_Report_should_downloaded() throws Throwable {
	FileOperations fo=new FileOperations();	
	assertTrue("Report not exist",fo.fileExistByPartialName("timecard-summary-report_"));
}

@Then("^I verify \"(.*?)\" value as \"(.*?)\" in \"(.*?)\" Hierarchy for newly added employee in Timecard Summary Report$")
public void i_verify_value_as_for_newly_added_employee_in_Timecard_Summary_Report(String column, String value,String Hierarchy) throws Throwable {
	assertTrue("Mismatches in Timecards",timecards.verify_DataInTimeSummaryReport(column, value,Hierarchy));
}

@And("^I delete on the existing \"(.*?)\" files in the temp folder$")
public void i_delete_on_the_existing_in_the_temp_folder(String PartialName) throws Throwable {
	FileOperations fo=new FileOperations();
	fo.fileDeleteByPartialName(PartialName);
}

@When("^I select the Report Date with recently added timecard; in \"(.*?)\" Popup$")
public void i_select_the_Report_Date_with_recently_added_timecard_in_Popup(String report) throws Throwable {
	String date=Employee_steps.recentlyAddedDate;;
	timecards.selectDatebyMD(date);
}

@Then("^Daily Time Report should downloaded$")
public void daily_Time_Report_should_downloaded() throws Throwable {
	FileOperations fo=new FileOperations();	
	assertTrue("Report not exist",fo.fileExistByPartialName("daily-time-report-"));
}

@Then("^I verify \"(.*?)\" value as \"(.*?)\" for newly added employee in Daily Time Report$")
public void i_verify_value_as_for_newly_added_employee_in_daily_time_Report(String column, String value) throws Throwable {
	assertTrue("Mismatches in Timecards",timecards.verify_DataInDailyTimeReport(column, value));
}

@Then("^I verify \"(.*?)\" value as \"(.*?)\" for newly added employee in Payroll File$")
public void i_verify_value_as_for_newly_added_employee_in_Payroll_file(String column, String value) throws Throwable {
	assertTrue("Mismatches in Timecards",timecards.verify_PayrollFile(column, value));
}

@When("^I select the Report Date as \"(.*?)\"; in \"(.*?)\" Popup$")
public void i_select_the_with_recently_added_timecard_in_Popup(String date,String report) throws Throwable {
	timecards.selectDatebyMD(date);
}

@When("^\"(.*?)\" Historical Report data should Match$")
public void Historical_Report_data_should_Match(String report) throws Throwable {
	ExcelCompare_SendMail es=new ExcelCompare_SendMail();
	if(report.equalsIgnoreCase("Daily Time"))
	{
		es.compareSend("temp\\daily-time-report-6-21-2017.csv","resources\\daily-time-report-6-21-2017.csv","Daily Time Report - Historical Comparision");
	}
	else if(report.equalsIgnoreCase("Timecard Summary"))
	{
		es.compareSend("temp\\timecard-summary-report_6-19-2017_6-25-2017.csv","resources\\timecard-summary-report_6-19-2017_6-25-2017.csv","Timecard Summary Report - Historical Comparision");
	}
	else
		assertTrue("Mismatches in value",false);
}

@When("^I click on \"(.*?)\" in the Timecards Page$")
public void i_click_on_in_the_time_Page(String button) throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	timecards= new Timecards(driver);
	timecards.clickOn_ByNameValue(button);
}

@When("^I check the first checkbox in the Timecards Page$")
public void i_check_the_first_employee() throws Throwable {
	timecards.checkOnFirstCheckbox();
}

@When("^I click on \"(.*?)\" button in the Timecards Page$")
public void i_click_on_in_the_xpath_Page(String button) throws Throwable {
	timecards.checkOn_button(button);
}

@When("^I when click Add Punch in the Timecards Page$")
public void i_when_click_Add_Punch_on() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	timecards =new Timecards(driver);
	timecards.clickOnAdd();
}

}
